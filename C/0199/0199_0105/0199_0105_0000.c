#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed char v3 (signed short, unsigned short);
extern signed char (*v4) (signed short, unsigned short);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (unsigned int, signed char);
extern void (*v14) (unsigned int, signed char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, signed char, signed short, signed short);
extern signed char (*v20) (signed short, signed char, signed short, signed short);
extern signed int v21 (signed char, unsigned int, signed char, signed short);
extern signed int (*v22) (signed char, unsigned int, signed char, signed short);
extern signed char v23 (signed char, signed short, signed short, unsigned short);
extern signed char (*v24) (signed char, signed short, signed short, unsigned short);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
unsigned short v27 (signed short, signed short);
unsigned short (*v28) (signed short, signed short) = v27;
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned char v32 = 0;
signed char v31 = 2;

unsigned short v27 (signed short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 1;
unsigned int v37 = 0U;
unsigned int v36 = 4U;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v39;
signed int v40;
v39 = 7 - 6;
v40 = v29 (v39);
history[history_index++] = (int)v40;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v43 = 1U;
signed int v42 = -4;
unsigned char v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed int v46 = -1;
unsigned char v45 = 1;
unsigned int v44 = 7U;
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
unsigned char v49;
signed char v50;
unsigned char v51;
signed short v52;
unsigned short v53;
v49 = v32 + v32;
v50 = 3 - v31;
v51 = 7 - 7;
v52 = -2 + -1;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
