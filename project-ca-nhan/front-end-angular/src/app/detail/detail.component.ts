import {Component, OnInit} from '@angular/core';
import {IWatchDto} from '../model/i-watch-dto';
import {WatchService} from '../service/watch.service';
import {DomSanitizer, Title} from '@angular/platform-browser';
import {ActivatedRoute, Router} from '@angular/router';
import {Observable} from 'rxjs';
import {IWatchType} from '../model/i-watch-type';
import {IWatch} from '../model/i-watch';
import Swal from 'sweetalert2';
import {CartService} from '../service/cart.service';
import {DataService} from '../service/data.service';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {
  watches: IWatchDto;
  watchType: IWatchType;
  cart: any = this.watchService.getCart();

  constructor(
    private watchService: WatchService,
    private activatedRoute: ActivatedRoute,
    private domSanitizer: DomSanitizer,
    private title: Title,
    private router: Router,
    private cartService: CartService,
    private dataService: DataService
  ) {
  }

  ngOnInit(): void {
    this.title.setTitle('Chi tiết sản phẩm');
    const id = Number(this.activatedRoute.snapshot.params.id);
    this.watchService.InfoProducer(id).subscribe(value => {
      // console.log(value);
      console.log('okkkk');
      console.log(value);
      this.watches = value;
    });
  }

  onAddToCart(watch: any) {
    const index = this.cart.findIndex((item) => {
      return item.id === watch.id;
    });
    if (index >= 0) {
      this.cart[index].quantity += 1;
    } else {
      const cartItem: any = {
        id: watch.id,
        name: watch.name,
        title: watch.title,
        price: watch.price,
        image: watch.image,
        quantity: 1
      };
      this.cart.push(cartItem);
    }
    this.cartService.saveCart(this.cart);
    this.dataService.changeData({
      quantity: this.cartService.getTotalQuantity()
    });
    Swal.fire('Thông Báo !!', 'Đã thêm vào giỏ hàng', 'success').then();
  }
}
