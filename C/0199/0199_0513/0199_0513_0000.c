#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern void v3 (unsigned char, unsigned int, unsigned char, signed short);
extern void (*v4) (unsigned char, unsigned int, unsigned char, signed short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned int v7 (unsigned char, signed int, signed int);
extern unsigned int (*v8) (unsigned char, signed int, signed int);
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern signed short v11 (unsigned int, unsigned int, signed char, signed char);
extern signed short (*v12) (unsigned int, unsigned int, signed char, signed char);
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed int v17 (unsigned int, signed char, signed char, signed int);
extern signed int (*v18) (unsigned int, signed char, signed char, signed int);
extern unsigned short v19 (signed char, signed short, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, signed short, unsigned short, unsigned short);
extern signed short v21 (unsigned char, signed int, unsigned int, signed int);
extern signed short (*v22) (unsigned char, signed int, unsigned int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, signed int, signed int);
extern signed int (*v26) (signed int, signed int, signed int);
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed short v32 = -1;
signed char v31 = -1;

unsigned short v5 (void)
{
{
for (;;) {
unsigned short v36 = 0;
unsigned int v35 = 2U;
signed int v34 = -1;
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
unsigned short v39;
unsigned char v40;
v39 = 1 - 1;
v40 = v1 (v39);
history[history_index++] = (int)v40;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
