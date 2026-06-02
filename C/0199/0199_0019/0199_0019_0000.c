#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, unsigned char);
extern unsigned short (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (signed char, signed short);
extern signed short (*v6) (signed char, signed short);
signed short v7 (unsigned int, signed char, signed char, unsigned char);
signed short (*v8) (unsigned int, signed char, signed char, unsigned char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
signed short v11 (signed int, unsigned int, signed short);
signed short (*v12) (signed int, unsigned int, signed short) = v11;
extern signed int v13 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed char, signed char, unsigned short, signed short);
extern unsigned short v17 (unsigned char, signed int);
extern unsigned short (*v18) (unsigned char, signed int);
extern void v21 (signed char);
extern void (*v22) (signed char);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern signed char v27 (unsigned short, signed short, unsigned int, signed char);
extern signed char (*v28) (unsigned short, signed short, unsigned int, signed char);
unsigned int v29 (signed int, unsigned int, signed short);
unsigned int (*v30) (signed int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed char v32 = -4;
unsigned char v31 = 6;

unsigned int v29 (signed int v34, unsigned int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 1;
signed int v38 = 2;
signed int v37 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
signed short v42 = 2;
unsigned char v41 = 5;
signed char v40 = -3;
trace++;
switch (trace)
{
case 1: 
return v40;
case 8: 
return v40;
case 10: 
return v40;
default: abort ();
}
}
}
}

signed short v11 (signed int v43, unsigned int v44, signed short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = 0;
signed char v47 = -4;
unsigned char v46 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v49, signed char v50, signed char v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -2;
unsigned char v54 = 7;
signed char v53 = 0;
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
signed char v58;
signed int v59;
unsigned char v60;
unsigned short v61;
v58 = 3 + v32;
v59 = 3 - -4;
v60 = 4 - v31;
v61 = v1 (v58, v59, v60);
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
