import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.routes').then((m) => m.routes),
  },
  {
    path: 'login',
    loadComponent: () => import('./login/login.page').then( m => m.LoginPage)
  },
  {
    path: 'sign-up',
    loadComponent: () => import('./sign-up/sign-up.page').then( m => m.SignUpPage)
  },
  {
    path: 'main',
    loadComponent: () => import('./main/main.page').then( m => m.MainPage)
  },
  {
    path: 'profile',
    loadComponent: () => import('./profile/profile.page').then( m => m.ProfilePage)
  },
  {
    path: 'settings',
    loadComponent: () => import('./settings/settings.page').then( m => m.SettingsPage)
  },
  {
    path: 'fresh-selections',
    loadComponent: () => import('./fresh-selections/fresh-selections.page').then( m => m.FreshSelectionsPage)
  },
  {
    path: 'sales-report',
    loadComponent: () => import('./sales-report/sales-report.page').then( m => m.SalesReportPage)
  },
  {
    path: 'product-inventory',
    loadComponent: () => import('./product-inventory/product-inventory.page').then( m => m.ProductInventoryPage)
  },
  {
    path: 'home',
    loadComponent: () => import('./home/home.page').then( m => m.HomePage)
  },

  {
    path: '',
    redirectTo: '/main',
    pathMatch: 'full',
  },
  {
    path: '',
    redirectTo: '/main',
    pathMatch: 'full',
  },



  
];
