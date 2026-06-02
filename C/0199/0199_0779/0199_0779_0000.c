#include <stdio.h>
#include <stdlib.h>
unsigned int v1 (unsigned char);
unsigned int (*v2) (unsigned char) = v1;
extern void v3 (signed char, signed char, signed short, unsigned char);
extern void (*v4) (signed char, signed char, signed short, unsigned char);
extern signed int v5 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned char, signed int);
extern signed char v7 (signed int, unsigned char, signed char);
extern signed char (*v8) (signed int, unsigned char, signed char);
unsigned int v9 (signed int, signed char, unsigned int, unsigned char);
unsigned int (*v10) (signed int, signed char, unsigned int, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed char, unsigned int);
extern void (*v14) (signed char, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (signed short, unsigned int, unsigned short);
extern signed char (*v18) (signed short, unsigned int, unsigned short);
extern unsigned char v19 (signed int, signed short, signed char);
extern unsigned char (*v20) (signed int, signed short, signed char);
extern signed int v21 (signed char, signed short, unsigned short);
extern signed int (*v22) (signed char, signed short, unsigned short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
signed short v25 (unsigned short, signed int, signed char);
signed short (*v26) (unsigned short, signed int, signed char) = v25;
unsigned char v27 (unsigned short, signed int);
unsigned char (*v28) (unsigned short, signed int) = v27;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned int v32 = 4U;
unsigned char v31 = 4;

unsigned char v27 (unsigned short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 6U;
signed short v37 = 2;
signed short v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (unsigned short v39, signed int v40, signed char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 3;
unsigned char v43 = 4;
signed char v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v45, signed char v46, unsigned int v47, unsigned char v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 2;
signed int v50 = 3;
signed int v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 1;
unsigned char v54 = 1;
unsigned short v53 = 1;
trace++;
switch (trace)
{
case 0: 
return 1U;
case 1: 
{
signed int v56;
unsigned char v57;
signed char v58;
signed char v59;
v56 = 2 - v55;
v57 = v54 + 6;
v58 = -4 + -2;
v59 = v7 (v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 3: 
{
signed char v60;
unsigned int v61;
v60 = -4 + -4;
v61 = 7U + 7U;
v13 (v60, v61);
}
break;
case 11: 
return 2U;
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
unsigned char v64;
unsigned int v65;
v64 = 1 + 3;
v65 = v1 (v64);
history[history_index++] = (int)v65;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
