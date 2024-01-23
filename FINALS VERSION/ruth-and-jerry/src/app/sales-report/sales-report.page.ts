import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';

@Component({
  selector: 'app-sales-report',
  templateUrl: './sales-report.page.html',
  styleUrls: ['./sales-report.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule]
})
export class SalesReportPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
