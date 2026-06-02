#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned char);
extern signed short v3 (unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern void v15 (unsigned char, unsigned char, unsigned char);
extern void (*v16) (unsigned char, unsigned char, unsigned char);
extern void v17 (signed int, signed short);
extern void (*v18) (signed int, signed short);
extern unsigned char v19 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned char (*v20) (unsigned int, unsigned int, unsigned short, signed char);
extern void v21 (unsigned int, signed short, signed char, unsigned char);
extern void (*v22) (unsigned int, signed short, signed char, unsigned char);
extern unsigned short v23 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v24) (signed short, unsigned int, signed short, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed char v32 = 2;
signed short v31 = -1;

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v36 = 5;
unsigned char v35 = 0;
unsigned char v34 = 2;
trace++;
switch (trace)
{
case 2: 
return v36;
case 4: 
return v35;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v39;
unsigned char v40;
unsigned short v41;
v39 = v31 + v33;
v40 = 4 - 4;
v41 = v1 (v39, v40);
history[history_index++] = (int)v41;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
