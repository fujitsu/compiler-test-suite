#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int, signed short);
extern signed char (*v2) (signed int, signed short);
extern unsigned int v3 (unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, signed short);
extern signed short v5 (unsigned char, unsigned short);
extern signed short (*v6) (unsigned char, unsigned short);
extern signed short v7 (unsigned int, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, unsigned char);
unsigned char v9 (unsigned short, unsigned short);
unsigned char (*v10) (unsigned short, unsigned short) = v9;
signed short v11 (signed int, signed int, unsigned char);
signed short (*v12) (signed int, signed int, unsigned char) = v11;
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
unsigned short v15 (unsigned int, unsigned short);
unsigned short (*v16) (unsigned int, unsigned short) = v15;
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
signed char v23 (unsigned char, signed short, signed char, signed short);
signed char (*v24) (unsigned char, signed short, signed char, signed short) = v23;
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned char v29 (signed short, unsigned char, signed int);
extern unsigned char (*v30) (signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed char v32 = 3;
unsigned int v31 = 5U;

signed char v23 (unsigned char v34, signed short v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
unsigned short v39 = 3;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 7U;
unsigned char v43 = 7;
unsigned short v42 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed short v45;
unsigned char v46;
signed int v47;
unsigned char v48;
v45 = 2 - 1;
v46 = 4 - v43;
v47 = 0 - v41;
v48 = v29 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v49, unsigned short v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = 3;
unsigned int v52 = 6U;
signed char v51 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v54, signed int v55, unsigned char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = -3;
signed char v58 = 0;
unsigned char v57 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v60, unsigned short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 5;
unsigned short v63 = 3;
unsigned char v62 = 7;
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
signed short v68;
signed char v69;
v67 = -3 - -4;
v68 = -2 - 2;
v69 = v1 (v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
