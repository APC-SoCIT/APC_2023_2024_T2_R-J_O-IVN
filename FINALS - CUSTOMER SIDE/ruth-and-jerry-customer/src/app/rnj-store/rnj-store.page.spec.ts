import { ComponentFixture, TestBed } from '@angular/core/testing';
import { RnjStorePage } from './rnj-store.page';

describe('RnjStorePage', () => {
  let component: RnjStorePage;
  let fixture: ComponentFixture<RnjStorePage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(RnjStorePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
