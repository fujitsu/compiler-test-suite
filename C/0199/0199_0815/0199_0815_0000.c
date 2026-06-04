#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, signed int, unsigned int);
extern unsigned int (*v2) (signed short, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int, unsigned int);
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned char v11 (signed short, signed char);
extern unsigned char (*v12) (signed short, signed char);
extern signed int v13 (unsigned char, unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, unsigned char, signed int, unsigned int);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
extern unsigned int v21 (signed int, signed char, signed char);
extern unsigned int (*v22) (signed int, signed char, signed char);
extern void v23 (unsigned int, unsigned int, signed char, unsigned short);
extern void (*v24) (unsigned int, unsigned int, signed char, unsigned short);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned char v27 (signed short, unsigned short, signed int);
extern unsigned char (*v28) (signed short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned char v32 = 6;
signed int v31 = -4;

void v25 (void)
{
{
for (;;) {
unsigned char v36 = 5;
unsigned short v35 = 4;
signed int v34 = 1;
trace++;
switch (trace)
{
case 11: 
return;
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
signed short v39;
signed int v40;
unsigned int v41;
unsigned int v42;
v39 = 1 + 0;
v40 = 0 + 2;
v41 = 5U + 1U;
v42 = v1 (v39, v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
