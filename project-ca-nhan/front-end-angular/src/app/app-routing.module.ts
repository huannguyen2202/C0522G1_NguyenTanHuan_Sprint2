import {Component, NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {BodyComponent} from './home/body/body.component';
import {SignInComponent} from './security/sign-in/sign-in.component';
import {CartComponent} from './cart/cart.component';
import {DetailComponent} from './detail/detail.component';
import {WatchListComponent} from './watch/watch-list/watch-list.component';
import {LoginComponent} from './decentralization/login/login.component';
import {DecentralizationModule} from './decentralization/decentralization.module';


const routes: Routes = [
  {path: 'login', loadChildren: () =>  DecentralizationModule},
  // {path: 'login', component: SignInComponent},
  {path: '', component: WatchListComponent},
  {path: 'cart', component: CartComponent},
  {path: 'detail/:id', component: DetailComponent},
]
;

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
