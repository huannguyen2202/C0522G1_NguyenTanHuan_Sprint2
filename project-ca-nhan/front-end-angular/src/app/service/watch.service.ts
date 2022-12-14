import {Injectable} from '@angular/core';
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

  constructor(private httpClient: HttpClient) {
  }

  findAllWatchPaging(page: number, limit: number, nameSearch: string): Observable<DataResult<IWatchDto>> {
    console.log(API_URL + '/watch/list?page=' + (page - 1) + '&size=' + limit +'&nameSearch='+ nameSearch);
    return this.httpClient.get<DataResult<IWatchDto>>(API_URL + '/watch/list?page=' + (page - 1) + '&size=' + limit +'&nameSearch='+ nameSearch);
  }

  // findAllProductPaging(curPage: number, numberRecord: number, nameSearch: string,
  //                      typeSearch: string): Observable<DataResult<IProductDto>> {
  //   return this.httpClient.get<DataResult<IProductDto>>(API_URL + '/product/list/' + nameSearch + '&' + typeSearch
  //     + '?page=' + (curPage - 1) + '&size=' + numberRecord);
  // }

  // paginate(page: number, limit: number): Observable<SearchResult<IBeerDto>> {
  //   return this.http.get<SearchResult<IBeerDto>>(this.API_BEER + '/beer/list?page=' + (page - 1) + '&size=' + limit);
  // }

  findAllWatchType(): Observable<IWatchType[]> {
    return this.httpClient.get<IWatchType[]>(API_URL + '/watch/type-list');
  }

  findAllWatchProducer(): Observable<IWatchProducer[]> {
    return this.httpClient.get<IWatchProducer[]>(API_URL + '/watch/producer-list');
  }

  InfoProducer(id: number): Observable<IWatchDto> {
    return this.httpClient.get<IWatchDto>(API_URL + '/watch/detail/' + id);
  }
  getCart() {
    const cartJson = sessionStorage.getItem('cart');
    if (cartJson) {
      return JSON.parse(cartJson);
    } else {
      return [];
    }
  }
}
