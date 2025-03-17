
#include <stdio.h>

class A {int a;};

int i [10];
A a[20][10];

int (*p1)[20];
A (*pa1)[10];

int (**p2)[20];
A (**pa2)[10];

int (*p3)[20][10];
A (*pa3)[10][3];

int (**p4)[20][10];
A (**pa4)[10][10];

int (*p5)[];
A (*pa5)[];
int (**p6)[];
A (**pa6)[];
int (*p7)[][10];
A (*pa7)[][3];
int (**p8)[][10];
A (**pa8)[][10];

int (*(*pp1)[20])[10];
A (*(**ppa2)[10])[10];
int (*(*pp3)[20])[10][10];
A (*(**ppa4)[10][10])[10][10];

int (*(*pp5)[])[];
A (*(**ppa6)[])[];
int (*(*pp7)[][10])[][10];
A (*(**ppa8)[][10])[][10];

int (*(*(*pp)[])[])[];

int main(){
 
 if (sizeof(i)==40 && sizeof(a)==sizeof(A [20][10]))
    printf("ok\n");
 else
    printf("ng\n");
 return 0;
}

