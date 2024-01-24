import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ProductInventoryPage } from './product-inventory.page';

describe('ProductInventoryPage', () => {
  let component: ProductInventoryPage;
  let fixture: ComponentFixture<ProductInventoryPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(ProductInventoryPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
