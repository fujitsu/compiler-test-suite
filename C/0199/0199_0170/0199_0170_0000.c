#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned short);
extern unsigned char (*v2) (signed int, signed short, unsigned short);
extern signed int v3 (unsigned short, unsigned char, signed char);
extern signed int (*v4) (unsigned short, unsigned char, signed char);
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
signed int v9 (unsigned int);
signed int (*v10) (unsigned int) = v9;
extern signed short v11 (unsigned short, signed char, signed short);
extern signed short (*v12) (unsigned short, signed char, signed short);
extern void v13 (signed short, unsigned short, signed char, unsigned int);
extern void (*v14) (signed short, unsigned short, signed char, unsigned int);
extern signed char v15 (unsigned int, unsigned short, signed char, unsigned int);
extern signed char (*v16) (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned short, signed char, signed char);
extern void (*v22) (unsigned short, signed char, signed char);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned int v32 = 3U;
signed char v31 = 2;

signed int v9 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 2U;
signed int v36 = -1;
signed short v35 = -4;
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
signed int v40;
signed short v41;
unsigned short v42;
unsigned char v43;
v40 = 1 + 1;
v41 = 1 - -3;
v42 = v33 - v33;
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
