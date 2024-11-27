#include <stdio.h>

struct tag {
  int a00:8;
  int a01:8;
  int a02:8;
  int a03:8;
  int a04:8;
  int a05:8;
  int a06:8;
  int a07:8;
  int a08:8;
  int a09:8;
  int a10:8;
  int a11:8;
  int a12:8;
  int a13:8;
  int a14:8;
  int a15:8;
  int a16:8;
  int a17:8;
  int a18:8;
  int a19:8;
  int a20:8;
  int a21:8;
  int a22:8;
  int a23:8;
  int a24:8;
  int a25:8;
  int a26:8;
  int a27:8;
  int a28:8;
  int a29:8;
  int a30:8;
  int a31:8;
  int a32:8;
  int a33:8;
  int a34:8;
  int a35:8;
  int a36:8;
  int a37:8;
  int a38:8;
  int a39:8;
  int a40:8;
} var;

int func(){
  var.a00=0;
  var.a01=1;
  var.a02=2;
  var.a03=3;
  var.a04=4;
  var.a05=5;
  var.a06=6;
  var.a07=7;
  var.a08=8;
  var.a09=9;
  var.a10=10;
  var.a11=11;
  var.a12=12;
  var.a13=13;
  var.a14=14;
  var.a15=15;
  var.a16=16;
  var.a17=17;
  var.a18=18;
  var.a19=19;
  var.a20=20;
  var.a21=21;
  var.a22=22;
  var.a23=23;
  var.a24=24;
  var.a25=25;
  var.a26=26;
  var.a27=27;
  var.a28=28;
  var.a29=29;
  var.a30=30;
  var.a31=31;
  var.a32=32;
  var.a33=33;
  var.a34=34;
  var.a35=35;
  var.a36=36;
  var.a37=37;
  var.a38=38;
  var.a39=39;
  var.a40=40;
  if (var.a00==0 && var.a10==10 && var.a20==20 && var.a30==30 && var.a40==40) return 100;
  else return 200;
}
int main() 
{
  printf("%s\n", (func()==100)?"ok":"ng");
}

