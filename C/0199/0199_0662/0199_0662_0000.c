#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed char);
extern unsigned int (*v2) (unsigned char, unsigned char, signed char);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, signed short);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned short, unsigned char);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern void v21 (signed int, unsigned char);
extern void (*v22) (signed int, unsigned char);
extern void v23 (unsigned char, unsigned short, unsigned char, unsigned int);
extern void (*v24) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char v25 (signed int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed char v32 = 0;
unsigned short v31 = 1;

signed char v17 (void)
{
{
for (;;) {
signed short v36 = -4;
signed int v35 = 3;
unsigned int v34 = 6U;
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
unsigned char v39;
unsigned char v40;
signed char v41;
unsigned int v42;
v39 = 7 + 7;
v40 = 4 - 7;
v41 = -1 + -4;
v42 = v1 (v39, v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
