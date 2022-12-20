import {Component, OnInit} from '@angular/core';
import {IWatchDto} from '../model/i-watch-dto';
import {CartService} from '../service/cart.service';
import {DataService} from '../service/data.service';
import {Title} from '@angular/platform-browser';
import {Observable} from 'rxjs';
import {render} from 'creditcardpayments/creditCardPayments';
import Swal from 'sweetalert2';
import swal from 'sweetalert2';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {
  carts: any = [];
  watch: IWatchDto;
  watchs$: Observable<IWatchDto[]>;
  totalPrice = this.cartService.getTotalPrice();
  totalQuantity = this.cartService.getTotalQuantity();

  constructor(private cartService: CartService,
              private dataService: DataService,
              // private tokenStorageService: TokenStorageService,
              private title: Title) {
    this.title.setTitle('Giỏ hàng');
    // render(
    //   {
    //     id: '#paypal',
    //     value: '2000',
    //     currency: 'usd',
    //     onApprove: details => {
    //       alert('vvvvvvvvv');
    //     }
    //   }
    // );
  }

  ngOnInit(): void {
    // tslint:disable-next-line:variable-name
    const _this = this;
    setTimeout(() => {
      _this.dataService.changeData({
        quantity: _this.cartService.getTotalQuantity()
      });
    }, 1);
    this.carts = this.cartService.getCart();
    this.dataService.changeData({
      quantity: this.cartService.getTotalQuantity()
    });
  }

  decrease(index: number, quantity: any) {
    let decreaseQuantity = parseInt(quantity, 10) - 1;
    decreaseQuantity = decreaseQuantity > 0 ? decreaseQuantity : 1;
    this.carts[index].quantity = decreaseQuantity;
    this.cartService.saveCart(this.carts);
    this.totalPrice = this.cartService.getTotalPrice();
    this.totalQuantity = this.cartService.getTotalQuantity();
    this.dataService.changeData({
      quantity: this.cartService.getTotalQuantity()
    });
  }

  increase(index: number, quantity: any) {
    let increaseQuantity = parseInt(quantity, 10) + 1;
    increaseQuantity = increaseQuantity <= 999 ? increaseQuantity : 999;
    this.carts[index].quantity = increaseQuantity;
    this.cartService.saveCart(this.carts);
    this.totalPrice = this.cartService.getTotalPrice();
    this.totalQuantity = this.cartService.getTotalQuantity();
    this.dataService.changeData({
      quantity: this.cartService.getTotalQuantity()
    });
  }
  deleteCart(index: number) {
    // tslint:disable-next-line:variable-name
    const _this = this;
    Swal.fire({
      icon: 'success',
      title: 'Thông báo!!',
      html: 'Đã xóa sản phẩm khỏi giỏ hàng',
      showConfirmButton: false,
      timer: 1000
    }).then();
    _this.carts.splice(index, 1);
    _this.cartService.saveCart(_this.carts);
    this.totalPrice = this.cartService.getTotalPrice();
    this.totalQuantity = this.cartService.getTotalQuantity();
    this.dataService.changeData({
      quantity: this.cartService.getTotalQuantity()
    });
  }

  payment() {
    // document.getElementById('myPayPalButtons').innerHTML = '<div id="btnPaypal"></div>';
    // const username = this.tokenStorageService.getUser().username;
    render({
      id: '#paypal',
      currency: 'VND',
      value: String((this.totalPrice / 23000).toFixed(2)),
      onApprove: () => {
        for (const item of this.carts) {
          item.watch = {
            id: item.id
          };
        }
        Swal.fire('Thông báo!!', 'Thanh toán thành công. </br>Đồng hồ của bạn sẽ được giao trong vòng 3 ngày tới', 'success').then();
        this.carts = [];
        this.cartService.saveCart(this.carts);
        this.dataService.changeData({
          quantity: this.cartService.getTotalQuantity()
        });
      }
    });
  }
}
