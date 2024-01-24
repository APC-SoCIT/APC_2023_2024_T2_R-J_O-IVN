import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ToastController } from '@ionic/angular';

@Component({
  selector: 'app-customer-orders',
  templateUrl: 'customer-orders.page.html',
  styleUrls: ['customer-orders.page.scss'],
})
export class CustomerOrdersPage {
  customerOrders: any = [];
  newOrder: any = {
    customer_name: '',
    order_details: '',
  };

  constructor(private http: HttpClient, private toastController: ToastController) {
    this.fetchCustomerOrders();
  }

  fetchCustomerOrders() {
    const apiUrl = 'http://your-php-backend/api.php';

    this.http.get(apiUrl).subscribe((data: any) => {
      this.customerOrders = data;
    });
  }

  async addOrder() {
    const apiUrl = 'http://your-php-backend/api.php';

    this.http.post(apiUrl, this.newOrder).subscribe(
      (response: any) => {
        this.presentToast(response.message);
        this.fetchCustomerOrders();
        this.resetNewOrder();
      },
      (error) => {
        console.error('Error adding order:', error);
        this.presentToast('Error adding order');
      }
    );
  }

  resetNewOrder() {
    this.newOrder = {
      customer_name: '',
      order_details: '',
    };
  }

  async presentToast(message: string) {
    const toast = await this.toastController.create({
      message: message,
      duration: 2000,
      position: 'bottom',
    });
    toast.present();
  }
}