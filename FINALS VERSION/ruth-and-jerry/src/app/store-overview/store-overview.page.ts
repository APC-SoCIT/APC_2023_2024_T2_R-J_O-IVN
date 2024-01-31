import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

@Component({
  selector: 'app-store-overview',
  templateUrl: './store-overview.page.html',
  styleUrls: ['./store-overview.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule]
})
export class StoreOverviewPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
