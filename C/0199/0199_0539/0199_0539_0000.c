#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned int);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned short v11 (unsigned int, signed short, signed int);
extern unsigned short (*v12) (unsigned int, signed short, signed int);
extern unsigned short v13 (signed char, unsigned char, unsigned short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed short, unsigned int, signed short);
extern unsigned short (*v18) (signed short, unsigned int, signed short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned short v23 (signed char, unsigned int, signed int, unsigned int);
extern unsigned short (*v24) (signed char, unsigned int, signed int, unsigned int);
extern void v25 (signed short, signed char, unsigned char);
extern void (*v26) (signed short, signed char, unsigned char);
extern unsigned short v27 (signed char, signed char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed char, signed char, unsigned char, unsigned char);
void v29 (signed short);
void (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed int v32 = -1;
unsigned char v31 = 0;

void v29 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -4;
unsigned short v36 = 0;
signed short v35 = -3;
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
unsigned int v41;
signed short v42;
v40 = 7 - 5;
v41 = 6U + 0U;
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
