#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
extern unsigned char v9 (signed char, unsigned short, signed short);
extern unsigned char (*v10) (signed char, unsigned short, signed short);
extern signed char v11 (signed short, unsigned short, unsigned int);
extern signed char (*v12) (signed short, unsigned short, unsigned int);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, unsigned char, unsigned char);
extern unsigned int (*v20) (unsigned char, unsigned short, unsigned char, unsigned char);
extern signed short v21 (unsigned int, signed short, unsigned int);
extern signed short (*v22) (unsigned int, signed short, unsigned int);
extern unsigned short v23 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned char);
signed char v25 (unsigned char);
signed char (*v26) (unsigned char) = v25;
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed int, unsigned int);
extern unsigned int (*v30) (signed char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned short v32 = 3;
unsigned char v31 = 5;

signed char v25 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 2;
unsigned char v36 = 0;
signed int v35 = -3;
trace++;
switch (trace)
{
case 6: 
return -3;
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
unsigned short v40;
signed short v41;
unsigned int v42;
v40 = v32 - v32;
v41 = 1 - -1;
v42 = v1 (v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
