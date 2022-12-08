import {IWatchType} from './i-watch-type';
import {IWatchProducer} from './i-watch-producer';

export interface IWatch {
  id?: number;
  name?: string;
  price?: string;
  discount?: string;
  image?: string;
  detail?: string;
  watchType?: IWatchType;
  watchProducer?: IWatchProducer;
}
