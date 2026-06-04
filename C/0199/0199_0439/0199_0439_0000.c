#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, unsigned char, signed int, unsigned int);
extern void (*v2) (signed short, unsigned char, signed int, unsigned int);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed short, unsigned int);
extern signed short (*v8) (signed short, unsigned int);
signed int v9 (unsigned short);
signed int (*v10) (unsigned short) = v9;
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
unsigned char v17 (signed int, unsigned short, unsigned char);
unsigned char (*v18) (signed int, unsigned short, unsigned char) = v17;
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern void v21 (unsigned int, signed int, unsigned int, unsigned char);
extern void (*v22) (unsigned int, signed int, unsigned int, unsigned char);
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern unsigned short v25 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned short v32 = 2;
unsigned int v31 = 6U;

unsigned char v17 (signed int v34, unsigned short v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -4;
signed char v38 = 0;
unsigned int v37 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed char v40;
unsigned short v41;
v40 = v38 - v38;
v41 = v27 (v40);
history[history_index++] = (int)v41;
}
break;
case 3: 
return v36;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 0;
signed int v44 = 3;
unsigned int v43 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 2;
signed char v48 = -3;
unsigned short v47 = 5;
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
signed short v52;
unsigned char v53;
signed int v54;
unsigned int v55;
v52 = -3 + -3;
v53 = 7 + 7;
v54 = -2 - 2;
v55 = 4U - 6U;
v1 (v52, v53, v54, v55);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
