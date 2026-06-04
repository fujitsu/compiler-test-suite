#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (signed int, unsigned char);
extern void (*v10) (signed int, unsigned char);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
extern void v13 (unsigned short, unsigned int);
extern void (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, signed char, unsigned int, unsigned short);
signed char v19 (signed char, unsigned short);
signed char (*v20) (signed char, unsigned short) = v19;
extern signed char v21 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, signed char, unsigned char);
extern unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
extern unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short);
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern unsigned int v27 (signed short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short);
extern signed int v29 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v30) (unsigned int, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned char v32 = 4;
unsigned short v31 = 1;

signed char v19 (signed char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 7;
signed short v37 = -1;
signed int v36 = 1;
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
signed char v41;
unsigned int v42;
unsigned char v43;
v41 = -1 + 1;
v42 = v33 - v33;
v43 = v1 (v41, v42);
history[history_index++] = (int)v43;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
