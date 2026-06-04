#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, signed char);
extern void (*v2) (unsigned int, signed char);
unsigned int v3 (signed int);
unsigned int (*v4) (signed int) = v3;
signed char v5 (signed short);
signed char (*v6) (signed short) = v5;
extern unsigned char v7 (unsigned int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, unsigned char, signed short);
extern signed short v9 (signed int, unsigned int, unsigned int, signed int);
extern signed short (*v10) (signed int, unsigned int, unsigned int, signed int);
extern signed short v11 (unsigned char, signed short, unsigned short, signed int);
extern signed short (*v12) (unsigned char, signed short, unsigned short, signed int);
extern unsigned short v13 (unsigned char, unsigned char, signed char);
extern unsigned short (*v14) (unsigned char, unsigned char, signed char);
unsigned char v15 (unsigned int, signed char);
unsigned char (*v16) (unsigned int, signed char) = v15;
unsigned int v17 (signed short, unsigned int);
unsigned int (*v18) (signed short, unsigned int) = v17;
extern void v19 (signed char, signed char, signed int);
extern void (*v20) (signed char, signed char, signed int);
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
signed char v25 (unsigned int, unsigned char, signed short);
signed char (*v26) (unsigned int, unsigned char, signed short) = v25;
extern signed char v27 (signed short, signed short, signed int);
extern signed char (*v28) (signed short, signed short, signed int);
extern signed int v29 (signed int, signed int, unsigned int, signed char);
extern signed int (*v30) (signed int, signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned int v32 = 2U;
signed int v31 = -1;

signed char v25 (unsigned int v34, unsigned char v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 7;
unsigned int v38 = 6U;
signed short v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 1;
unsigned short v43 = 5;
signed int v42 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v45, signed char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 7U;
signed char v48 = 2;
unsigned int v47 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -3;
unsigned int v52 = 1U;
unsigned int v51 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 2;
signed int v56 = -3;
unsigned char v55 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v58;
unsigned char v59;
signed char v60;
unsigned short v61;
v58 = 6 + 6;
v59 = 2 - 1;
v60 = -2 + -1;
v61 = v13 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 3: 
{
unsigned int v62;
signed int v63;
v62 = 5U - 4U;
v63 = v21 (v62);
history[history_index++] = (int)v63;
}
break;
case 13: 
return 5U;
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
unsigned int v66;
signed char v67;
v66 = 4U - 0U;
v67 = -2 + -4;
v1 (v66, v67);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
