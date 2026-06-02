#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
unsigned int v3 (signed int);
unsigned int (*v4) (signed int) = v3;
void v5 (unsigned short, unsigned int);
void (*v6) (unsigned short, unsigned int) = v5;
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern void v13 (signed short, signed int, signed char);
extern void (*v14) (signed short, signed int, signed char);
extern void v15 (signed int, signed int, unsigned char, signed char);
extern void (*v16) (signed int, signed int, unsigned char, signed char);
extern signed short v17 (unsigned short, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned char v23 (signed int, signed int, unsigned int);
unsigned char (*v24) (signed int, signed int, unsigned int) = v23;
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern unsigned short v29 (unsigned char, signed short, unsigned char);
extern unsigned short (*v30) (unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed short v32 = -4;
signed char v31 = -1;

unsigned char v23 (signed int v34, signed int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
signed short v38 = 2;
signed int v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 0;
signed char v43 = 2;
signed char v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 2;
unsigned char v47 = 7;
signed short v46 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed char v49;
signed int v50;
v49 = 2 + 1;
v50 = v25 (v49);
history[history_index++] = (int)v50;
}
break;
case 3: 
{
signed short v51;
v51 = v11 ();
history[history_index++] = (int)v51;
}
break;
case 13: 
return 2U;
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
unsigned char v54;
signed int v55;
v54 = 5 - 0;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
