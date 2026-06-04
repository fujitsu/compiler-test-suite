#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed int);
extern unsigned int (*v2) (signed int, signed int);
extern unsigned char v3 (signed short, unsigned short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned short, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v12) (unsigned int, signed char, unsigned short, unsigned short);
void v13 (unsigned short);
void (*v14) (unsigned short) = v13;
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned short);
extern unsigned int (*v20) (signed char, signed int, unsigned short);
extern signed int v21 (signed short, unsigned short, unsigned char);
extern signed int (*v22) (signed short, unsigned short, unsigned char);
extern signed char v23 (signed short, unsigned int);
extern signed char (*v24) (signed short, unsigned int);
extern signed short v25 (signed short, unsigned short, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int);
extern unsigned char v27 (unsigned int, unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 0U;
signed int v31 = -1;

void v13 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 5U;
unsigned short v36 = 2;
unsigned int v35 = 3U;
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
signed int v41;
unsigned int v42;
v40 = 3 - v31;
v41 = -4 - -2;
v42 = v1 (v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
