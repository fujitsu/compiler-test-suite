#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
signed int v7 (signed short);
signed int (*v8) (signed short) = v7;
extern unsigned char v9 (signed int, signed char);
extern unsigned char (*v10) (signed int, signed char);
extern signed int v11 (unsigned char, unsigned char, unsigned char);
extern signed int (*v12) (unsigned char, unsigned char, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned int v15 (signed short, signed char);
extern unsigned int (*v16) (signed short, signed char);
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern unsigned int v19 (signed char, unsigned int, signed short);
extern unsigned int (*v20) (signed char, unsigned int, signed short);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v23 (signed char, unsigned short, signed int, signed short);
extern unsigned char (*v24) (signed char, unsigned short, signed int, signed short);
unsigned short v25 (signed int, unsigned short, signed short, unsigned int);
unsigned short (*v26) (signed int, unsigned short, signed short, unsigned int) = v25;
unsigned char v27 (signed char, signed int, signed int);
unsigned char (*v28) (signed char, signed int, signed int) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned char v32 = 2;
signed short v31 = 2;

unsigned char v27 (signed char v34, signed int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
signed short v38 = -4;
signed int v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed int v40, unsigned short v41, signed short v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -1;
signed char v45 = 1;
signed short v44 = -4;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -1;
signed int v49 = 3;
unsigned int v48 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 7;
unsigned char v53 = 6;
signed short v52 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 0;
unsigned int v57 = 6U;
signed short v56 = -3;
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
signed int v61;
v61 = v1 ();
history[history_index++] = (int)v61;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
