#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned char);
extern void (*v2) (unsigned char, signed short, unsigned char);
signed char v3 (signed int);
signed char (*v4) (signed int) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
extern void v29 (unsigned short, signed int);
extern void (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned short v32 = 0;
signed char v31 = -2;

signed char v3 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 3;
unsigned char v36 = 7;
signed int v35 = -1;
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
unsigned char v40;
signed short v41;
unsigned char v42;
v40 = 1 - 2;
v41 = 2 - -3;
v42 = 3 - 3;
v1 (v40, v41, v42);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
