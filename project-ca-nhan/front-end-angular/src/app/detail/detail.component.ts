import {Component, OnInit} from '@angular/core';
import {IWatchDto} from '../model/i-watch-dto';
import {WatchService} from '../service/watch.service';
import {DomSanitizer, Title} from '@angular/platform-browser';
import {ActivatedRoute, Router} from '@angular/router';
import {Observable} from 'rxjs';
import {IWatchType} from '../model/i-watch-type';
import {IWatch} from '../model/i-watch';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {
  watches: IWatchDto;
  watchType: IWatchType;

  constructor(
    private watchService: WatchService,
    private activatedRoute: ActivatedRoute,
    private domSanitizer: DomSanitizer,
    private title: Title,
    private router: Router
  ) {
  }

  ngOnInit(): void {
    this.title.setTitle('Chi tiết sản phẩm');
    const id = Number(this.activatedRoute.snapshot.params.id);
    this.watchService.InfoProducer(id).subscribe(value => {
      console.log(value);
      this.watches = value;
    });
  }
}
