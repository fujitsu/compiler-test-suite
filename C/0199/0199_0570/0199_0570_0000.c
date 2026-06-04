#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (unsigned char, signed short, signed int, signed short);
extern signed short (*v10) (unsigned char, signed short, signed int, signed short);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned int v21 (unsigned int, signed int, signed int);
extern unsigned int (*v22) (unsigned int, signed int, signed int);
extern signed int v23 (unsigned char, signed short, signed int);
extern signed int (*v24) (unsigned char, signed short, signed int);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned int v32 = 2U;
signed char v31 = 1;

unsigned short v3 (void)
{
{
for (;;) {
signed char v36 = 1;
signed int v35 = -2;
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
unsigned int v39;
v39 = v1 ();
history[history_index++] = (int)v39;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
