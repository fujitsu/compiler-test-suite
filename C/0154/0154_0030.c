#include <stdio.h>

double a[100];
double b[100];
double c[100];

int sub1() {
  int i;
  for(i = 1; i < 100; ++i) {
    a[i] = b[i]*c[i];
  }
  return 1;
}

int sub2(int a1, int a2) {return a1+a2;}
int sub5(int a1, int a2, int a3, int a4, int a5) {return a1+a2-a3+a4-a5;}
int sub10(int a1, int a2, int a3, int a4, int a5,
	  int a6, int a7, int a8, int a9, int a10) {return a1+a2+a3-a4+a5-a6+a7+a8+a9+a10;}
int main() {
  int r;
  r = sub10(sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())),
	    sub5(sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1()),
		 sub2(sub1(), sub1())));
  if (r == 12) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}
