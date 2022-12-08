import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {DataResult} from '../model/data-result';
import {IWatchDto} from '../model/i-watch-dto';
import {IWatchType} from '../model/i-watch-type';
import {IWatchProducer} from '../model/i-watch-producer';

const API_URL = 'http://localhost:8080/api';
@Injectable({
  providedIn: 'root'
})
export class WatchService {

  constructor(private httpClient: HttpClient) { }

  findAllWatchPaging(curPage: number, numberRecord: number, nameSearch: string): Observable<DataResult<IWatchDto>> {
    return this.httpClient.get<DataResult<IWatchDto>>(API_URL + '/watch/list');
  }

  findAllWatchType(): Observable<IWatchType[]> {
    return this.httpClient.get<IWatchType[]>(API_URL + '/watch/type-list');
  }
  findAllWatchProducer(): Observable<IWatchProducer[]> {
    return this.httpClient.get<IWatchProducer[]>(API_URL + '/watch/producer-list');
  }
}