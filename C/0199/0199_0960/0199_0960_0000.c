#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (unsigned int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int, unsigned int);
extern signed short v21 (signed char, signed char, unsigned int, unsigned int);
extern signed short (*v22) (signed char, signed char, unsigned int, unsigned int);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned int v25 (signed int, signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, signed char, unsigned short, unsigned short);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
signed int v29 (signed int, unsigned char, unsigned short, unsigned int);
signed int (*v30) (signed int, unsigned char, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed short v32 = -3;
unsigned char v31 = 4;

signed int v29 (signed int v34, unsigned char v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 5;
unsigned int v39 = 5U;
unsigned short v38 = 2;
trace++;
switch (trace)
{
case 1: 
return v34;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 1;
signed short v43 = -4;
signed short v42 = -2;
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
signed int v47;
signed char v48;
v47 = -3 + -3;
v48 = -4 - 3;
v1 (v47, v48);
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
