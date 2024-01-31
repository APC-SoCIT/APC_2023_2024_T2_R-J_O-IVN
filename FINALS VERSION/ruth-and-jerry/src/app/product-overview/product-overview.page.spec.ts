import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ProductOverviewPage } from './product-overview.page';

describe('ProductOverviewPage', () => {
  let component: ProductOverviewPage;
  let fixture: ComponentFixture<ProductOverviewPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(ProductOverviewPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
