#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
unsigned char v5 (signed int);
unsigned char (*v6) (signed int) = v5;
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned char, signed int, signed int);
extern void (*v12) (unsigned char, signed int, signed int);
extern signed char v13 (signed int, signed char, unsigned short, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short, unsigned short);
unsigned int v15 (signed char, unsigned int);
unsigned int (*v16) (signed char, unsigned int) = v15;
extern unsigned int v17 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned char, signed short, signed short, unsigned char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
unsigned char v21 (signed int, unsigned int, signed int, unsigned short);
unsigned char (*v22) (signed int, unsigned int, signed int, unsigned short) = v21;
unsigned char v23 (signed char, unsigned char, signed char);
unsigned char (*v24) (signed char, unsigned char, signed char) = v23;
signed int v25 (void);
signed int (*v26) (void) = v25;
extern unsigned short v27 (signed char, unsigned char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned char, unsigned short);
signed char v29 (signed int);
signed char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed char v32 = -1;
unsigned short v31 = 7;

signed char v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 4;
unsigned char v36 = 3;
unsigned short v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed int v40 = 3;
unsigned int v39 = 5U;
unsigned int v38 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed char v41, unsigned char v42, signed char v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 6;
unsigned short v45 = 2;
unsigned short v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed int v47, unsigned int v48, signed int v49, unsigned short v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 1;
signed int v52 = -1;
signed char v51 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v56 = 3;
unsigned char v55 = 1;
unsigned short v54 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed char v57, unsigned int v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 0;
unsigned char v60 = 5;
unsigned short v59 = 5;
trace++;
switch (trace)
{
case 11: 
return 0U;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = -2;
unsigned char v64 = 5;
unsigned char v63 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 0;
unsigned char v68 = 0;
unsigned short v67 = 2;
trace++;
switch (trace)
{
case 1: 
return 3;
case 5: 
return 1;
case 7: 
{
unsigned char v70;
signed int v71;
signed int v72;
v70 = 7 - v68;
v71 = v69 + 1;
v72 = 0 + v69;
v11 (v70, v71, v72);
}
break;
case 9: 
{
v9 ();
}
break;
case 13: 
return -1;
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
signed char v75;
unsigned int v76;
unsigned int v77;
v75 = v32 + v32;
v76 = 2U - 2U;
v77 = v1 (v75, v76);
history[history_index++] = (int)v77;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
