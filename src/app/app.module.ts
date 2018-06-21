import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { WidgetsService } from './widgets.service';

import { AppComponent } from './app.component';
import { DashboardModule } from '@navihealth/widget-dashboard-ng5';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [BrowserModule, DashboardModule.forRoot(WidgetsService)],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
