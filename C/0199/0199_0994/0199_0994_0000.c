#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed char, signed int, signed short);
extern void (*v2) (signed int, signed char, signed int, signed short);
extern void v3 (unsigned char, signed char, unsigned short);
extern void (*v4) (unsigned char, signed char, unsigned short);
extern unsigned char v5 (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char v7 (signed int, unsigned char);
extern signed char (*v8) (signed int, unsigned char);
unsigned char v11 (unsigned int, signed char, signed int);
unsigned char (*v12) (unsigned int, signed char, signed int) = v11;
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed char v32 = -2;
signed int v31 = 0;

unsigned char v11 (unsigned int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
unsigned short v38 = 3;
unsigned short v37 = 1;
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
signed int v42;
signed char v43;
signed int v44;
signed short v45;
v42 = v31 + v31;
v43 = v32 + -1;
v44 = 1 + -2;
v45 = -2 + 0;
v1 (v42, v43, v44, v45);
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
