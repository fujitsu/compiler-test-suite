#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern signed char v3 (signed char, signed short, signed char, unsigned short);
extern signed char (*v4) (signed char, signed short, signed char, unsigned short);
extern unsigned int v5 (unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char);
extern void v7 (unsigned short, signed short, unsigned char);
extern void (*v8) (unsigned short, signed short, unsigned char);
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
extern unsigned int v11 (signed int, signed short, signed char, signed short);
extern unsigned int (*v12) (signed int, signed short, signed char, signed short);
extern unsigned char v13 (signed int, unsigned char, signed char);
extern unsigned char (*v14) (signed int, unsigned char, signed char);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed short, unsigned int);
extern void (*v24) (signed short, unsigned int);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed char v32 = -3;
unsigned int v31 = 3U;

signed int v17 (void)
{
{
for (;;) {
signed short v36 = -1;
signed char v35 = 1;
signed short v34 = 2;
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
signed short v39;
signed int v40;
v39 = 3 + 1;
v40 = v1 (v39);
history[history_index++] = (int)v40;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
