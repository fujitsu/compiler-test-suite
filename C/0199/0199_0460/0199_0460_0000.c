#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed int, signed short, signed int);
extern signed short (*v2) (signed int, signed int, signed short, signed int);
signed char v3 (signed char);
signed char (*v4) (signed char) = v3;
extern unsigned char v5 (unsigned char, signed short, unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short, unsigned char, signed short);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
signed char v9 (unsigned short, signed short, signed char, unsigned int);
signed char (*v10) (unsigned short, signed short, signed char, unsigned int) = v9;
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern signed short v13 (unsigned int, signed int, signed char);
extern signed short (*v14) (unsigned int, signed int, signed char);
extern unsigned int v15 (signed int, signed short);
extern unsigned int (*v16) (signed int, signed short);
unsigned int v19 (unsigned int, unsigned short, unsigned int);
unsigned int (*v20) (unsigned int, unsigned short, unsigned int) = v19;
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern unsigned short v23 (signed short, unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (signed short, unsigned short, signed char, unsigned char);
signed int v25 (unsigned char, signed char, unsigned int, unsigned short);
signed int (*v26) (unsigned char, signed char, unsigned int, unsigned short) = v25;
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed int v32 = -1;
signed char v31 = 1;

signed int v25 (unsigned char v34, signed char v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 2;
signed char v39 = -4;
unsigned short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v41, unsigned short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 0;
unsigned int v45 = 0U;
signed int v44 = 3;
trace++;
switch (trace)
{
case 6: 
return v41;
case 8: 
return v41;
case 10: 
return v41;
default: abort ();
}
}
}
}

signed char v9 (unsigned short v47, signed short v48, signed char v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -1;
signed int v52 = -1;
signed char v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 6;
signed short v56 = 2;
signed int v55 = 2;
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
signed int v60;
signed int v61;
signed short v62;
signed int v63;
signed short v64;
v60 = 3 + v32;
v61 = -1 + v32;
v62 = v33 + -3;
v63 = v32 - 1;
v64 = v1 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
