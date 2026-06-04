#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed short, signed short);
extern signed int (*v2) (signed char, unsigned int, signed short, signed short);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned short v7 (signed short, signed int, unsigned char);
unsigned short (*v8) (signed short, signed int, unsigned char) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v12) (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
extern unsigned char v15 (unsigned int, signed int, signed char);
extern unsigned char (*v16) (unsigned int, signed int, signed char);
extern signed int v17 (signed int, unsigned int, signed short);
extern signed int (*v18) (signed int, unsigned int, signed short);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
unsigned char v27 (signed int, signed char, unsigned int, unsigned int);
unsigned char (*v28) (signed int, signed char, unsigned int, unsigned int) = v27;
unsigned char v29 (unsigned short);
unsigned char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed short v32 = -4;
unsigned int v31 = 4U;

unsigned char v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 7;
unsigned int v36 = 0U;
unsigned int v35 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (signed int v38, signed char v39, unsigned int v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 5;
unsigned short v43 = 0;
unsigned short v42 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed short v47 = 3;
signed char v46 = -2;
unsigned char v45 = 3;
trace++;
switch (trace)
{
case 1: 
return 0;
case 4: 
{
unsigned char v48;
unsigned int v49;
v48 = v45 - 0;
v49 = v25 (v48);
history[history_index++] = (int)v49;
}
break;
case 6: 
{
unsigned char v50;
unsigned int v51;
v50 = 0 + v45;
v51 = v25 (v50);
history[history_index++] = (int)v51;
}
break;
case 8: 
{
unsigned char v52;
unsigned int v53;
v52 = v45 - 4;
v53 = v25 (v52);
history[history_index++] = (int)v53;
}
break;
case 10: 
{
unsigned char v54;
unsigned int v55;
v54 = v45 + v45;
v55 = v25 (v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v56, signed int v57, unsigned char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 0;
signed short v60 = 1;
signed char v59 = -1;
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
signed char v64;
unsigned int v65;
signed short v66;
signed short v67;
signed int v68;
v64 = 1 - 3;
v65 = 7U + v31;
v66 = v33 - v32;
v67 = -4 - v32;
v68 = v1 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
