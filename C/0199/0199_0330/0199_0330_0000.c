#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned char, unsigned char);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern unsigned short v5 (signed int, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, signed int);
unsigned char v7 (unsigned char);
unsigned char (*v8) (unsigned char) = v7;
extern unsigned short v9 (signed int, signed short, signed int);
extern unsigned short (*v10) (signed int, signed short, signed int);
extern signed char v11 (unsigned int, unsigned char);
extern signed char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (unsigned int, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short);
extern signed int v15 (signed int, signed int, unsigned char);
extern signed int (*v16) (signed int, signed int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned short, signed int, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, signed int, unsigned int);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (signed short, signed int, unsigned char);
extern unsigned int (*v24) (signed short, signed int, unsigned char);
extern signed int v25 (unsigned short, unsigned int, signed int);
extern signed int (*v26) (unsigned short, unsigned int, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (signed short, signed char, signed char, signed short);
extern signed char (*v30) (signed short, signed char, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed short v32 = -3;
signed int v31 = 3;

unsigned char v7 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 1;
unsigned char v36 = 7;
signed int v35 = 3;
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
unsigned char v41;
unsigned int v42;
v40 = 5 - 2;
v41 = 4 - 3;
v42 = v1 (v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 9);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
