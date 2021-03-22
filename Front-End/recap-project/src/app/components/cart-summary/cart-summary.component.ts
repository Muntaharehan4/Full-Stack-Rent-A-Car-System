import { ToastrService } from 'ngx-toastr';
import { CartService } from 'src/app/services/cart.service';
import { CartItem } from './../../models/entities/cart-item';
import { Component, OnInit } from '@angular/core';
import { Car } from 'src/app/models/entities/car';

@Component({
  selector: 'app-cart-summary',
  templateUrl: './cart-summary.component.html',
  styleUrls: ['./cart-summary.component.css']
})
export class CartSummaryComponent implements OnInit {

  cartItems:CartItem[] = [];

  constructor(private cartService:CartService,
              private toastrService:ToastrService) { }

  ngOnInit(): void {
    this.getCartItems();
  }

  getCartItems() {
    this.cartItems = this.cartService.listCart();
  }

  removeFromCart(car:Car){
    this.cartService.removeFromCart(car);
    this.toastrService.error(car.carName + " deleted from cart.")
  }

}
