import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';

import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {BodyComponent} from './home/body/body.component';
import {NavbarComponent} from './home/navbar/navbar.component';
import {FooterComponent} from './home/footer/footer.component';
import {SignInComponent} from './security/sign-in/sign-in.component';
import {CartComponent} from './cart/cart.component';
import {DetailComponent} from './detail/detail.component';
import {FormsModule} from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';
import {WatchListComponent} from './watch/watch-list/watch-list.component';
import {WatchTypeListComponent} from './watch/watch-type-list/watch-type-list.component';
import {DecentralizationModule} from './decentralization/decentralization.module';
import {GoogleLoginProvider, SocialAuthServiceConfig, SocialLoginModule} from 'angularx-social-login';

const googleLoginOptions = {
  scope: 'profile email',
  plugin_name: 'login'
};

@NgModule({
  declarations: [
    AppComponent,
    BodyComponent,
    NavbarComponent,
    FooterComponent,
    // SignInComponent,
    CartComponent,
    DetailComponent,
    WatchListComponent,
    WatchTypeListComponent
  ],
  imports: [
    SocialLoginModule,
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    DecentralizationModule
  ],
  providers: [
    {
      provide: 'SocialAuthServiceConfig',
      useValue: {
        autoLogin: false,
        providers: [
          {
            id: GoogleLoginProvider.PROVIDER_ID,
            provider: new GoogleLoginProvider(
              '612774287153-uthnsrl25on17doe8413il68ebv9c969.apps.googleusercontent.com',
              googleLoginOptions
            )
          },
        ]
      } as SocialAuthServiceConfig,
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule {
}
