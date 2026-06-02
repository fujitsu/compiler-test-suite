#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned char);
extern unsigned short (*v2) (signed short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed int v9 (unsigned char, signed short, unsigned short, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned short, signed int);
extern void v11 (unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed int v17 (unsigned int, signed char, signed char);
extern signed int (*v18) (unsigned int, signed char, signed char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned short v21 (signed int, unsigned short, signed int);
extern unsigned short (*v22) (signed int, unsigned short, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, unsigned short, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned short, signed int, signed char);
extern void (*v28) (unsigned short, signed int, signed char);
extern unsigned char v29 (signed int, signed char, unsigned short);
extern unsigned char (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 0;
unsigned char v31 = 5;

signed char v5 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -4;
unsigned char v36 = 7;
signed int v35 = 0;
trace++;
switch (trace)
{
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
signed short v40;
signed char v41;
unsigned char v42;
unsigned short v43;
v40 = v33 + -4;
v41 = -3 + 3;
v42 = v31 - v32;
v43 = v1 (v40, v41, v42);
history[history_index++] = (int)v43;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
