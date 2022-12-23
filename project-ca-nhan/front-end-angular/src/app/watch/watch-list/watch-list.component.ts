import {Component, OnInit} from '@angular/core';
import {BehaviorSubject, Observable} from 'rxjs';
import {IWatchDto} from '../../model/i-watch-dto';
import {IWatchType} from '../../model/i-watch-type';
import {IWatchProducer} from '../../model/i-watch-producer';
import {WatchService} from '../../service/watch.service';
import swal from 'sweetalert2';
import Swal from 'sweetalert2';
import {CartService} from '../../service/cart.service';
import {DataService} from '../../service/data.service';

@Component({
  selector: 'app-watch-list',
  templateUrl: './watch-list.component.html',
  styleUrls: ['./watch-list.component.css']
})
export class WatchListComponent implements OnInit {
  nameSearch = '';
  page = 1;
  pageSize = 8;
  total$: Observable<number>;
  totalElement: number;
  action: boolean;
  watchs$: Observable<IWatchDto[]>;
  watchTypes$: Observable<IWatchType[]>;
  watchProducers$: Observable<IWatchProducer[]>;
  cart: any = this.watchService.getCart();

  constructor(private watchService: WatchService,
              private cartService: CartService,
              private dataService: DataService) {
  }

  ngOnInit(): void {
    this.getAllWatchType();
    this.getAllWatchProducer();
    this.getAllWatchPaging();
    // this.paginate();
  }

  getAllWatchPaging(): void {
    console.log(this.nameSearch);
    this.watchService.findAllWatchPaging(this.page, this.pageSize, this.nameSearch).subscribe(value => {

      if (value != null) {
        console.log(value.content);
        this.action = true;
        // this.beerListDto$ = new BehaviorSubject<IBeerDto[]>(data.content);
        this.watchs$ = new BehaviorSubject<IWatchDto[]>(value.content);
        this.total$ = new BehaviorSubject<number>(value.totalElements);
        this.totalElement = value.totalElements;
      } else {
        this.action = false;
      }
    });
  }

  // getAllProductPaging(): void {
  //   this.productService.findAllProductPaging(this.page, this.pageSize, this.nameSearch, this.typeSearch).subscribe(value => {
  //       this.products$ = new BehaviorSubject<IProductDto[]>(value.content);
  //       this.total$ = new BehaviorSubject<number>(value.totalElements);
  //       console.log(this.products$);
  //     },
  //     error => {
  //       console.log(error);
  //     });
  // }

  getAllWatchType(): void {
    this.watchService.findAllWatchType().subscribe(value => {
        this.watchTypes$ = new BehaviorSubject<IWatchType[]>(value);
      },
      error => {
        console.log(error);
      });
  }

  getAllWatchProducer(): void {
    this.watchService.findAllWatchProducer().subscribe(value => {
        this.watchProducers$ = new BehaviorSubject<IWatchProducer[]>(value);
      },
      error => {
        console.log(error);
      });
  }

  compareWithId(item1, item2): boolean {
    return item1 && item2 && item1.id === item2.id;
  }

  resetSearchInput(): void {
    this.nameSearch = '';
  }

  searchByMore(): void {
    this.page = 1;
    this.getAllWatchPaging();
  }

  showDetail(image: string, detail: string) {
    swal.fire({
      title: 'Thông tin sản phẩm',
      text: detail,
      imageUrl: image,
      imageWidth: 400,
      imageHeight: 200,
      imageAlt: 'Custom image',
    });
  }

  nextPage() {
    this.pageSize += 4;
    this.getAllWatchPaging();
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
