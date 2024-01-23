import { ComponentFixture, TestBed } from '@angular/core/testing';
import { FreshSelectionsPage } from './fresh-selections.page';

describe('FreshSelectionsPage', () => {
  let component: FreshSelectionsPage;
  let fixture: ComponentFixture<FreshSelectionsPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(FreshSelectionsPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
