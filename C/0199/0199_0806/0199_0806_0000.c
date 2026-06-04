#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, signed short);
extern unsigned char (*v2) (signed int, unsigned char, signed short);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
void v5 (unsigned char, signed char);
void (*v6) (unsigned char, signed char) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
unsigned char v9 (signed short);
unsigned char (*v10) (signed short) = v9;
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
unsigned int v15 (signed char, signed short);
unsigned int (*v16) (signed char, signed short) = v15;
unsigned char v17 (unsigned char, signed short, signed short, signed char);
unsigned char (*v18) (unsigned char, signed short, signed short, signed char) = v17;
extern unsigned short v19 (signed char, signed int, unsigned short);
extern unsigned short (*v20) (signed char, signed int, unsigned short);
extern signed short v21 (unsigned int);
extern signed short (*v22) (unsigned int);
extern signed char v23 (signed char, unsigned int, unsigned short);
extern signed char (*v24) (signed char, unsigned int, unsigned short);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
extern void v27 (signed int);
extern void (*v28) (signed int);
void v29 (unsigned char, unsigned int, signed int, signed char);
void (*v30) (unsigned char, unsigned int, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed char v32 = -4;
signed char v31 = -3;

void v29 (unsigned char v34, unsigned int v35, signed int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
signed char v39 = 1;
unsigned char v38 = 6;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v41, signed short v42, signed short v43, signed char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 3;
unsigned int v46 = 0U;
signed int v45 = -4;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

unsigned int v15 (signed char v48, signed short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -2;
unsigned short v51 = 1;
signed char v50 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -3;
unsigned char v55 = 2;
signed short v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed short v59 = 1;
signed int v58 = -4;
unsigned int v57 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v60, signed char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 7;
unsigned short v63 = 7;
unsigned int v62 = 1U;
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
signed int v67;
unsigned char v68;
signed short v69;
unsigned char v70;
v67 = 0 + -4;
v68 = 2 - 1;
v69 = 3 + 2;
v70 = v1 (v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
