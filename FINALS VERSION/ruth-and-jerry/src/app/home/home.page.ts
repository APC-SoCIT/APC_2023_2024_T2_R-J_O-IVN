import { Component } from '@angular/core';
import { IonHeader, IonToolbar, IonTitle, IonContent } from '@ionic/angular/standalone';
import { IonicModule } from '@ionic/angular';
import { ExploreContainerComponent } from '../explore-container/explore-container.component';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
  standalone: true,
  imports: [IonicModule,IonHeader, IonToolbar, IonTitle, IonContent, ExploreContainerComponent],
})
export class HomePage {buttonClicked(buttonLabel: string) {
  console.log(`Button clicked: ${buttonLabel}`);
  // You can add your logic here
}
  constructor() {}
}
