import { ComponentFixture, TestBed } from '@angular/core/testing';
import { MyreceiptsPage } from './myreceipts.page';

describe('MyreceiptsPage', () => {
  let component: MyreceiptsPage;
  let fixture: ComponentFixture<MyreceiptsPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(MyreceiptsPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
