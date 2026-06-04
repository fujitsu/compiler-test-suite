#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed int);
extern void (*v2) (signed int, signed int);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v7 (unsigned short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, signed short, signed int);
extern unsigned int v9 (signed int, unsigned char);
extern unsigned int (*v10) (signed int, unsigned char);
unsigned int v11 (signed char, signed char, unsigned short, signed short);
unsigned int (*v12) (signed char, signed char, unsigned short, signed short) = v11;
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
extern signed int v17 (unsigned int, unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned int v19 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
extern unsigned char v25 (unsigned char, signed char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned int, signed short);
extern unsigned int v27 (unsigned int, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned int);
signed char v29 (signed char);
signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned char v32 = 4;
signed char v31 = -2;

signed char v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 1U;
signed char v36 = 3;
unsigned short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v38, signed char v39, unsigned short v40, signed short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 6;
unsigned int v43 = 5U;
signed int v42 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v45;
unsigned int v46;
unsigned short v47;
unsigned char v48;
v45 = v38 - -4;
v46 = v43 - v43;
v47 = v40 - 1;
v48 = v15 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
unsigned char v49;
signed char v50;
unsigned int v51;
signed short v52;
unsigned char v53;
v49 = 4 - 0;
v50 = -4 - v39;
v51 = v43 + 5U;
v52 = v41 - v41;
v53 = v25 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 13: 
return 5U;
case 15: 
return v43;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -4;
unsigned char v56 = 1;
unsigned char v55 = 6;
trace++;
switch (trace)
{
case 1: 
return -2;
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
signed int v60;
signed int v61;
v60 = 2 + -2;
v61 = -1 + -1;
v1 (v60, v61);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
