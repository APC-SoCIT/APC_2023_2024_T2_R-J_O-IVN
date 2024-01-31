import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

@Component({
  selector: 'app-product-overview',
  templateUrl: './product-overview.page.html',
  styleUrls: ['./product-overview.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule]
})
export class ProductOverviewPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
