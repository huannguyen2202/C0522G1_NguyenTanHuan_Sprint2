import { Component, OnInit } from '@angular/core';
import {BehaviorSubject, Observable} from 'rxjs';
import {IWatchDto} from '../../model/i-watch-dto';
import {IWatchType} from '../../model/i-watch-type';
import {IWatchProducer} from '../../model/i-watch-producer';
import {WatchService} from '../../service/watch.service';
import swal from 'sweetalert2';

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

  constructor(private watchService: WatchService) { }

  ngOnInit(): void {
    this.getAllWatchType();
    this.getAllWatchProducer();
    this.getAllWatchPaging();
    // this.paginate();
  }

  getAllWatchPaging(): void {
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

  // paginate() {
  //   this.watchService.findAllWatchPaging(this.page, this.pageSize).subscribe(data => {
  //     if (data != null) {
  //       console.log(data.content);
  //       this.action = true;
  //       this.beerListDto$ = new BehaviorSubject<IBeerDto[]>(data.content);
  //       this.total$ = new BehaviorSubject<number>(data.totalElements);
  //       this.totalElement = data.totalElements;
  //     } else {
  //       this.action = false;
  //     }
  //   });
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
}
