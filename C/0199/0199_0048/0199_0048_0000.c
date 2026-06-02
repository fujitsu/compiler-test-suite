#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed int, unsigned char, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char, unsigned char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int, signed int, signed char);
extern unsigned short (*v10) (signed int, signed int, signed char);
signed short v11 (unsigned short, unsigned short);
signed short (*v12) (unsigned short, unsigned short) = v11;
extern unsigned int v13 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 2;
unsigned int v31 = 3U;

signed short v11 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
signed short v37 = 3;
signed char v36 = -2;
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
v41 = v1 ();
history[history_index++] = (int)v41;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
