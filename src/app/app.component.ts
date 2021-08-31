import { Component } from '@angular/core';
import { Usuario } from './clases/usuario';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'my-first-project';
  miUsuario: Usuario;
  numeroUno: number;
  numeroDos: number;
   suma : number;
   promedio: number;
  constructor()
  {
    this.numeroUno=0;
    this.numeroDos=0;
    this.suma=0;
    this.miUsuario= new Usuario();
    this.promedio=0;
  }
  miMetodoSuma()
  {
     
    this.suma = this.numeroUno + this.numeroDos; 
    this.promedio= this.suma / 2 ;

  }
  miMetodoSumaLimpiar()
  {
    this.numeroDos=0;
    this.numeroUno=0;
    this.suma=0;
    this.promedio= 0 ;
  }
}
