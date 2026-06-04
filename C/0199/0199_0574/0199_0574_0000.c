#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned char);
extern unsigned char (*v2) (signed char, signed short, unsigned char);
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed short v7 (signed char, signed int);
extern signed short (*v8) (signed char, signed int);
extern unsigned char v9 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v10) (signed int, signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed short, signed int);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (unsigned char, signed int, unsigned short, unsigned short);
extern unsigned char (*v18) (unsigned char, signed int, unsigned short, unsigned short);
extern signed short v19 (signed char, unsigned int);
extern signed short (*v20) (signed char, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (signed int, unsigned char, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned char, unsigned int, signed short);
extern unsigned int v25 (signed short, unsigned char, signed char);
extern unsigned int (*v26) (signed short, unsigned char, signed char);
unsigned int v27 (unsigned short, unsigned char, unsigned char, unsigned int);
unsigned int (*v28) (unsigned short, unsigned char, unsigned char, unsigned int) = v27;
void v29 (signed short, unsigned int, signed char, signed int);
void (*v30) (signed short, unsigned int, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = 3;
signed char v31 = 1;

void v29 (signed short v34, unsigned int v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 2;
signed short v39 = 3;
unsigned char v38 = 0;
trace++;
switch (trace)
{
case 4: 
return;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned short v41, unsigned char v42, unsigned char v43, unsigned int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 7;
signed int v46 = 3;
signed char v45 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned int v50 = 2U;
unsigned int v49 = 3U;
signed int v48 = -1;
trace++;
switch (trace)
{
case 1: 
return 3;
case 6: 
return 6;
case 8: 
return 4;
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
signed char v53;
signed short v54;
unsigned char v55;
unsigned char v56;
v53 = 3 - v32;
v54 = -4 + -3;
v55 = 1 + 5;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
