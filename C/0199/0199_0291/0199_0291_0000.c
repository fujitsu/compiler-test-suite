#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, signed char, unsigned char);
extern signed char (*v2) (signed char, unsigned short, signed char, unsigned char);
extern unsigned short v3 (signed char, signed char);
extern unsigned short (*v4) (signed char, signed char);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern unsigned char v13 (signed int, unsigned int, signed char, signed short);
extern unsigned char (*v14) (signed int, unsigned int, signed char, signed short);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed int v17 (unsigned char, unsigned int, unsigned char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned char);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, signed short, unsigned int);
extern signed int v25 (unsigned short, signed char);
extern signed int (*v26) (unsigned short, signed char);
extern unsigned int v27 (unsigned int, unsigned int, signed char);
extern unsigned int (*v28) (unsigned int, unsigned int, signed char);
extern signed char v29 (signed char, signed char, signed char, signed int);
extern signed char (*v30) (signed char, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed char v32 = 0;
unsigned char v31 = 7;

unsigned int v15 (void)
{
{
for (;;) {
signed short v36 = 1;
signed int v35 = 3;
unsigned short v34 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v37;
unsigned int v38;
signed char v39;
unsigned int v40;
v37 = 5U + 2U;
v38 = 4U - 4U;
v39 = 0 + 1;
v40 = v27 (v37, v38, v39);
history[history_index++] = (int)v40;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v43 = 6;
unsigned char v42 = 3;
unsigned char v41 = 3;
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
signed char v46;
unsigned short v47;
signed char v48;
unsigned char v49;
signed char v50;
v46 = v32 - v32;
v47 = 0 + 0;
v48 = -2 - -2;
v49 = v31 + v31;
v50 = v1 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
