#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, signed int, unsigned short, signed short);
extern void (*v2) (unsigned char, signed int, unsigned short, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned char v5 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, unsigned char);
extern void v7 (signed short, signed short, unsigned char, unsigned short);
extern void (*v8) (signed short, signed short, unsigned char, unsigned short);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed int);
extern void (*v16) (unsigned char, signed int);
extern void v17 (unsigned char, unsigned int, unsigned int, signed char);
extern void (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
unsigned int v21 (unsigned char, signed char);
unsigned int (*v22) (unsigned char, signed char) = v21;
extern void v25 (unsigned short, unsigned short, signed int, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed char, signed short, signed int);
extern unsigned short (*v30) (signed char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed char v32 = 2;
signed short v31 = 3;

unsigned int v21 (unsigned char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -1;
unsigned short v37 = 7;
unsigned int v36 = 6U;
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
unsigned char v41;
signed int v42;
unsigned short v43;
signed short v44;
v41 = 7 + 7;
v42 = -4 + 2;
v43 = 0 - 6;
v44 = v33 - -2;
v1 (v41, v42, v43, v44);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
