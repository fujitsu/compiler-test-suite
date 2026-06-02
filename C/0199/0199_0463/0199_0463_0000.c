#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed char, unsigned int, unsigned char);
extern signed char (*v2) (signed char, signed char, unsigned int, unsigned char);
extern signed char v3 (unsigned char, signed short);
extern signed char (*v4) (unsigned char, signed short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern void v11 (unsigned short, unsigned short, signed short);
extern void (*v12) (unsigned short, unsigned short, signed short);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
extern signed short v29 (unsigned char, signed char, signed int);
extern signed short (*v30) (unsigned char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned short v32 = 4;
signed char v31 = 3;

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v36 = 7U;
unsigned short v35 = 1;
signed short v34 = -2;
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
signed char v39;
signed char v40;
unsigned int v41;
unsigned char v42;
signed char v43;
v39 = v31 - v31;
v40 = -1 - -2;
v41 = 5U + 3U;
v42 = 6 + 7;
v43 = v1 (v39, v40, v41, v42);
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
