#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed short);
extern void (*v2) (unsigned short, signed short);
extern signed short v3 (unsigned short, unsigned int, unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned int, unsigned short, unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed short v7 (unsigned short, unsigned int, unsigned char);
extern signed short (*v8) (unsigned short, unsigned int, unsigned char);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed int v11 (signed int, signed char);
extern signed int (*v12) (signed int, signed char);
signed char v13 (unsigned int, signed int, unsigned char, signed int);
signed char (*v14) (unsigned int, signed int, unsigned char, signed int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (signed int, signed short);
extern unsigned short (*v18) (signed int, signed short);
extern signed char v19 (signed int, signed int, unsigned short, unsigned short);
extern signed char (*v20) (signed int, signed int, unsigned short, unsigned short);
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
extern signed char v23 (unsigned char, unsigned int);
extern signed char (*v24) (unsigned char, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned short v32 = 3;
signed int v31 = -3;

signed char v13 (unsigned int v34, signed int v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -1;
unsigned short v39 = 4;
signed int v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
signed short v43 = 3;
unsigned char v42 = 1;
signed char v41 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v44;
signed int v45;
unsigned short v46;
unsigned short v47;
signed char v48;
v44 = -2 + -4;
v45 = 1 - 3;
v46 = 3 - 0;
v47 = 4 - 0;
v48 = v19 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed char v51 = -2;
unsigned short v50 = 7;
signed char v49 = 1;
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
unsigned short v54;
signed short v55;
v54 = 3 + v32;
v55 = 0 + 2;
v1 (v54, v55);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
