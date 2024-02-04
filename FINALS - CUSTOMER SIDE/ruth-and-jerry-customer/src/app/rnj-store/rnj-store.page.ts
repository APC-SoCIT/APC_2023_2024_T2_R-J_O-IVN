import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

@Component({
  selector: 'app-rnj-store',
  templateUrl: './rnj-store.page.html',
  styleUrls: ['./rnj-store.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule]
})
export class RnjStorePage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
