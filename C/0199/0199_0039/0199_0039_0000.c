#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, signed int);
extern signed int (*v2) (unsigned short, unsigned short, signed int);
extern signed char v3 (signed char, unsigned int, unsigned int);
extern signed char (*v4) (signed char, unsigned int, unsigned int);
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
unsigned char v13 (unsigned short, unsigned short, signed int, signed char);
unsigned char (*v14) (unsigned short, unsigned short, signed int, signed char) = v13;
extern signed short v15 (signed char, unsigned int, unsigned short, unsigned short);
extern signed short (*v16) (signed char, unsigned int, unsigned short, unsigned short);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned short v19 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
unsigned short v27 (signed int, unsigned char);
unsigned short (*v28) (signed int, unsigned char) = v27;
extern unsigned short v29 (unsigned char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed char v32 = 3;
signed int v31 = 1;

unsigned short v27 (signed int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 2;
unsigned int v37 = 2U;
signed char v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed char v41 = 2;
signed short v40 = 3;
unsigned int v39 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v42, unsigned short v43, signed int v44, signed char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = -2;
unsigned char v47 = 4;
signed short v46 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -4;
signed short v51 = 2;
signed short v50 = 2;
trace++;
switch (trace)
{
case 1: 
return v52;
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
unsigned short v55;
unsigned short v56;
signed int v57;
signed int v58;
v55 = 2 + 0;
v56 = 3 - 2;
v57 = v31 - v31;
v58 = v1 (v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
