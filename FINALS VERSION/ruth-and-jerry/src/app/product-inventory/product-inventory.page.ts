import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

@Component({
  selector: 'app-product-inventory',
  templateUrl: './product-inventory.page.html',
  styleUrls: ['./product-inventory.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule]
})
export class ProductInventoryPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
