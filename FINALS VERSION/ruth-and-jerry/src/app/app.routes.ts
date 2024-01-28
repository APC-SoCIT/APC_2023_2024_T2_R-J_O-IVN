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
    path: 'tab4',
    loadComponent: () => import('./tab4/tab4.page').then( m => m.Tab4Page)
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
    path: '',
    redirectTo: '/main',
    pathMatch: 'full',
  },
  {
    path: '',
    redirectTo: '/main',
    pathMatch: 'full',
  },  {
    path: 'forget-pass',
    loadComponent: () => import('./forget-pass/forget-pass.page').then( m => m.ForgetPassPage)
  },




  
];
