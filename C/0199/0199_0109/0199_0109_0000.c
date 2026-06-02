#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
extern void v3 (unsigned short, unsigned short);
extern void (*v4) (unsigned short, unsigned short);
void v5 (signed char, unsigned short);
void (*v6) (signed char, unsigned short) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (unsigned short, unsigned char, signed short);
extern unsigned int (*v12) (unsigned short, unsigned char, signed short);
extern unsigned char v13 (signed char, signed int, unsigned short);
extern unsigned char (*v14) (signed char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, signed short);
extern unsigned char (*v16) (signed int, signed short, signed short);
extern signed int v17 (unsigned int, unsigned char, signed int, signed int);
extern signed int (*v18) (unsigned int, unsigned char, signed int, signed int);
unsigned int v19 (signed int, unsigned char, unsigned int);
unsigned int (*v20) (signed int, unsigned char, unsigned int) = v19;
signed short v21 (signed int, unsigned int);
signed short (*v22) (signed int, unsigned int) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char, signed short, signed char);
extern signed char (*v26) (signed char, signed short, signed char);
extern signed short v29 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned int v32 = 6U;
unsigned char v31 = 6;

signed short v21 (signed int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 3;
unsigned char v37 = 2;
signed char v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v39, unsigned char v40, unsigned int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 5;
unsigned int v43 = 5U;
unsigned int v42 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v45, unsigned short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 1;
signed char v48 = 3;
unsigned int v47 = 2U;
trace++;
switch (trace)
{
case 1: 
return;
case 4: 
{
unsigned int v50;
v50 = v23 ();
history[history_index++] = (int)v50;
}
break;
case 6: 
{
unsigned int v51;
v51 = v23 ();
history[history_index++] = (int)v51;
}
break;
case 12: 
return;
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
unsigned int v54;
signed short v55;
v54 = 0U + 7U;
v55 = 2 - -1;
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
