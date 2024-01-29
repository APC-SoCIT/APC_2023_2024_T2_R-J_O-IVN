import { Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

export const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'home',
        loadComponent: () =>
          import('../home/home.page').then((m) => m.HomePage),
      },
      {
        path: 'profile',
        loadComponent: () =>
          import('../profile/profile.page').then((m) => m.ProfilePage),
      },
      {
        path: 'login',
        loadComponent: () =>
          import('../login/login.page').then((m) => m.LoginPage),
      },
      {
        path: 'main',
        loadComponent: () =>
          import('../main/main.page').then((m) => m.MainPage),
      },
      {
        path: '',
        redirectTo: '/main',
        pathMatch: 'full',
      },
    ],
  },
  {
    path: '',
    redirectTo: '/main',
    pathMatch: 'full',
  },
];
