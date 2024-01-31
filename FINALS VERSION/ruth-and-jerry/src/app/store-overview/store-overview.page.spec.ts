import { ComponentFixture, TestBed } from '@angular/core/testing';
import { StoreOverviewPage } from './store-overview.page';

describe('StoreOverviewPage', () => {
  let component: StoreOverviewPage;
  let fixture: ComponentFixture<StoreOverviewPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(StoreOverviewPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
