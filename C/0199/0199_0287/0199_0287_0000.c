#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed char, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed char, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
signed int v13 (signed int);
signed int (*v14) (signed int) = v13;
extern unsigned short v15 (unsigned int, signed short, unsigned short, signed char);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short, signed char);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned char v19 (signed int, unsigned char, signed char, unsigned int);
extern unsigned char (*v20) (signed int, unsigned char, signed char, unsigned int);
extern signed int v21 (signed int, signed char, unsigned char, unsigned char);
extern signed int (*v22) (signed int, signed char, unsigned char, unsigned char);
extern unsigned int v23 (unsigned char, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned int, unsigned short, signed int);
extern signed short v25 (signed short, unsigned char, signed short, signed int);
extern signed short (*v26) (signed short, unsigned char, signed short, signed int);
extern void v27 (signed short, signed char, signed int);
extern void (*v28) (signed short, signed char, signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed int v32 = -1;
unsigned short v31 = 4;

unsigned short v17 (void)
{
{
for (;;) {
signed int v36 = 1;
unsigned char v35 = 0;
signed short v34 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed int v37;
signed char v38;
unsigned char v39;
unsigned char v40;
signed int v41;
v37 = 2 + -2;
v38 = 2 + 0;
v39 = 6 + 7;
v40 = 5 + v35;
v41 = v21 (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 15: 
return 6;
default: abort ();
}
}
}
}

signed int v13 (signed int v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 2;
unsigned char v44 = 3;
signed int v43 = -1;
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
unsigned int v48;
unsigned int v49;
signed char v50;
signed int v51;
signed char v52;
v48 = 7U + 0U;
v49 = 5U + 4U;
v50 = -4 - -4;
v51 = 2 - -2;
v52 = v1 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
