import { Component, OnInit } from '@angular/core';
import {BehaviorSubject, Observable} from 'rxjs';
import {IWatchDto} from '../../model/i-watch-dto';
import {IWatchType} from '../../model/i-watch-type';
import {IWatchProducer} from '../../model/i-watch-producer';
import {WatchService} from '../../service/watch.service';

@Component({
  selector: 'app-watch-type-list',
  templateUrl: './watch-type-list.component.html',
  styleUrls: ['./watch-type-list.component.css']
})
export class WatchTypeListComponent implements OnInit {
  nameSearch = '';
  typeSearch = '';
  page = 1;
  pageSize = 5;
  total$: Observable<number>;
  watchs$: Observable<IWatchDto[]>;
  watchTypes$: Observable<IWatchType[]>;
  watchProducers$: Observable<IWatchProducer[]>;

  constructor(private watchService: WatchService) { }

  ngOnInit(): void {
    this.getAllWatchType();
    this.getAllWatchProducer();
    this.getAllWatchPaging();
  }

  getAllWatchPaging(): void {
    this.watchService.findAllWatchPaging(this.page, this.pageSize, this.nameSearch).subscribe(value => {
        this.watchs$ = new BehaviorSubject<IWatchDto[]>(value.content);
        this.total$ = new BehaviorSubject<number>(value.totalElements);
        console.log(this.watchs$);
      },
      error => {
        console.log(error);
      });
  }

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

}
