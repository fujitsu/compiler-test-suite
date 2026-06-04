#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern unsigned char v7 (signed int, signed int);
extern unsigned char (*v8) (signed int, signed int);
signed int v9 (signed int, unsigned int, signed int);
signed int (*v10) (signed int, unsigned int, signed int) = v9;
extern signed char v11 (signed int, signed int, signed char, unsigned short);
extern signed char (*v12) (signed int, signed int, signed char, unsigned short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (unsigned short, unsigned char, signed int, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed int, signed char);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed char v21 (signed short, signed int, unsigned short);
extern signed char (*v22) (signed short, signed int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int, unsigned int);
extern signed int (*v26) (signed int, unsigned int);
extern signed char v27 (unsigned int, signed int, signed char, unsigned short);
extern signed char (*v28) (unsigned int, signed int, signed char, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed int v32 = 0;
signed char v31 = -3;

signed int v9 (signed int v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 5;
unsigned char v38 = 1;
unsigned char v37 = 1;
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
v1 ();
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
