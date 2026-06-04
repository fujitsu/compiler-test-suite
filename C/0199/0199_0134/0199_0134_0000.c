#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned char v3 (unsigned int);
unsigned char (*v4) (unsigned int) = v3;
extern signed char v5 (signed short, unsigned short);
extern signed char (*v6) (signed short, unsigned short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (unsigned char, unsigned char);
extern signed char (*v12) (unsigned char, unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned char, unsigned int, unsigned char);
extern void (*v24) (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned int v27 (signed short, signed short, unsigned int);
extern unsigned int (*v28) (signed short, signed short, unsigned int);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed int v32 = 2;
signed int v31 = 1;

unsigned char v3 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -4;
signed int v36 = 3;
signed char v35 = -1;
trace++;
switch (trace)
{
case 10: 
return 1;
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
unsigned int v40;
v40 = v1 ();
history[history_index++] = (int)v40;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
