#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, signed short);
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
extern signed short v7 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v8) (signed short, unsigned int, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed short, unsigned int);
extern unsigned int (*v12) (signed short, unsigned int);
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
extern void v15 (unsigned char, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned char, unsigned int, unsigned char, signed char);
extern signed char v17 (signed int, unsigned int, signed short);
extern signed char (*v18) (signed int, unsigned int, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (unsigned short, unsigned short, unsigned char, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short, unsigned char, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned int v27 (unsigned char, signed int, unsigned int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned char v32 = 0;
unsigned char v31 = 4;

unsigned char v29 (void)
{
{
for (;;) {
signed int v36 = 2;
unsigned int v35 = 7U;
unsigned int v34 = 1U;
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
v39 = v1 ();
history[history_index++] = (int)v39;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
