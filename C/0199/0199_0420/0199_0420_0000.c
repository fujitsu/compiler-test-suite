#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned short v9 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int);
extern void v11 (unsigned char, signed short);
extern void (*v12) (unsigned char, signed short);
extern void v13 (signed short, signed int, signed short);
extern void (*v14) (signed short, signed int, signed short);
unsigned short v15 (signed char);
unsigned short (*v16) (signed char) = v15;
extern signed short v19 (unsigned short, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, unsigned char, unsigned short);
extern unsigned int v21 (signed char, unsigned short, unsigned int);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int);
extern unsigned int v23 (signed char, unsigned short, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed short v27 (signed int, unsigned char, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned char v32 = 6;
unsigned char v31 = 0;

unsigned short v15 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
signed char v36 = 2;
signed short v35 = 2;
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
signed char v40;
unsigned int v41;
unsigned int v42;
v40 = v33 + v33;
v41 = 5U - 3U;
v42 = v1 (v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
