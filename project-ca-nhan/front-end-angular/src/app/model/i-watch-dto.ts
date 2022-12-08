import {IWatchType} from './i-watch-type';
import {IWatchProducer} from './i-watch-producer';

export interface IWatchDto {
  id?: number;
  name?: string;
  price?: string;
  discount?: string;
  image?: string;
  detail?: string;
  type?: string;
  producer?: string;
}
