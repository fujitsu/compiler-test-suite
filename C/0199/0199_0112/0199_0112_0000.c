#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned char, unsigned short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (unsigned int, signed int, unsigned int, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned int, signed int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned char v9 (unsigned char, signed char, signed int, signed char);
extern unsigned char (*v10) (unsigned char, signed char, signed int, signed char);
extern unsigned int v11 (unsigned char, unsigned short, signed char);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char);
extern unsigned char v13 (unsigned short, signed char, signed short);
extern unsigned char (*v14) (unsigned short, signed char, signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (signed short, signed char, signed int, signed char);
extern signed short (*v18) (signed short, signed char, signed int, signed char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed short v32 = -4;
unsigned int v31 = 2U;

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v36 = 4U;
signed char v35 = -4;
signed short v34 = 0;
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
unsigned short v41;
unsigned short v42;
v39 = 0 - 2;
v40 = 5 + 2;
v41 = 1 - 4;
v42 = v1 (v39, v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
