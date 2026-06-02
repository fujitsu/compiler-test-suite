#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (signed short, signed int, unsigned char);
extern signed short (*v4) (signed short, signed int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
extern unsigned short v11 (signed char, signed char, signed short);
extern unsigned short (*v12) (signed char, signed char, signed short);
unsigned short v13 (unsigned char, signed int, unsigned char, unsigned char);
unsigned short (*v14) (unsigned char, signed int, unsigned char, unsigned char) = v13;
signed char v15 (void);
signed char (*v16) (void) = v15;
extern void v17 (signed int, signed char, signed char, unsigned short);
extern void (*v18) (signed int, signed char, signed char, unsigned short);
extern void v19 (signed int, unsigned char, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned char, unsigned int);
signed int v21 (unsigned int, signed short, signed short, unsigned short);
signed int (*v22) (unsigned int, signed short, signed short, unsigned short) = v21;
signed short v23 (unsigned char, signed char, signed short, unsigned char);
signed short (*v24) (unsigned char, signed char, signed short, unsigned char) = v23;
unsigned char v25 (signed int, unsigned char, signed char, signed int);
unsigned char (*v26) (signed int, unsigned char, signed char, signed int) = v25;
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, signed short, signed int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed char v32 = -1;
unsigned short v31 = 6;

unsigned char v25 (signed int v34, unsigned char v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 5U;
unsigned short v39 = 5;
signed short v38 = -1;
trace++;
switch (trace)
{
case 1: 
return v35;
default: abort ();
}
}
}
}

signed short v23 (unsigned char v41, signed char v42, signed short v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 1U;
unsigned int v46 = 5U;
signed char v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v48, signed short v49, signed short v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = -3;
unsigned char v53 = 3;
unsigned char v52 = 4;
trace++;
switch (trace)
{
case 9: 
return -2;
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed short v57 = 0;
unsigned char v56 = 5;
signed int v55 = -1;
trace++;
switch (trace)
{
case 4: 
return 2;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v58, signed int v59, unsigned char v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -1;
unsigned char v63 = 7;
unsigned int v62 = 0U;
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
signed char v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
