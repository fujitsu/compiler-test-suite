#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, signed char, unsigned short, unsigned int);
extern unsigned char (*v2) (signed short, signed char, unsigned short, unsigned int);
extern unsigned char v3 (signed int, signed short, unsigned short, signed int);
extern unsigned char (*v4) (signed int, signed short, unsigned short, signed int);
extern signed char v7 (unsigned char, unsigned short, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned short);
extern signed short v9 (signed int, signed char, unsigned short);
extern signed short (*v10) (signed int, signed char, unsigned short);
extern unsigned short v11 (signed int, signed short, unsigned char, signed char);
extern unsigned short (*v12) (signed int, signed short, unsigned char, signed char);
unsigned int v13 (unsigned char, unsigned int, signed int);
unsigned int (*v14) (unsigned char, unsigned int, signed int) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned char);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned char);
extern signed short v29 (signed int, unsigned short, signed int);
extern signed short (*v30) (signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned short v32 = 5;
unsigned char v31 = 0;

unsigned int v13 (unsigned char v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 2;
unsigned short v38 = 7;
unsigned short v37 = 0;
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
signed short v42;
signed char v43;
unsigned short v44;
unsigned int v45;
unsigned char v46;
v42 = 0 - -2;
v43 = 3 + -3;
v44 = v32 - 2;
v45 = 7U + 5U;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
