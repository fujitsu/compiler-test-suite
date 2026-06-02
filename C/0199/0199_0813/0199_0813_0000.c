#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed char);
extern unsigned int (*v2) (unsigned char, unsigned short, signed char);
extern unsigned char v3 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned short v5 (signed int, signed char, signed int, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int, signed int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (signed char, unsigned int, signed int);
extern unsigned short (*v16) (signed char, unsigned int, signed int);
static void v17 (signed int);
static void (*v18) (signed int) = v17;
extern unsigned short v19 (unsigned short, signed int, unsigned short);
extern unsigned short (*v20) (unsigned short, signed int, unsigned short);
unsigned char v21 (signed short, signed int);
unsigned char (*v22) (signed short, signed int) = v21;
static signed char v23 (signed int, unsigned int, unsigned short);
static signed char (*v24) (signed int, unsigned int, unsigned short) = v23;
extern void v25 (unsigned short, unsigned short, signed short, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed short, unsigned short);
unsigned int v27 (unsigned short, signed short, unsigned int, unsigned short);
unsigned int (*v28) (unsigned short, signed short, unsigned int, unsigned short) = v27;
extern unsigned int v29 (unsigned char, signed int, signed short, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed char v32 = 2;
unsigned int v31 = 5U;

unsigned int v27 (unsigned short v34, signed short v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 2;
signed int v39 = -1;
unsigned int v38 = 4U;
trace++;
switch (trace)
{
case 6: 
{
signed int v41;
v41 = v39 - v39;
v17 (v41);
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}

static signed char v23 (signed int v42, unsigned int v43, unsigned short v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = -4;
unsigned short v46 = 7;
unsigned short v45 = 1;
trace++;
switch (trace)
{
case 8: 
return v47;
default: abort ();
}
}
}
}

unsigned char v21 (signed short v48, signed int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 7;
signed char v51 = 1;
unsigned short v50 = 1;
trace++;
switch (trace)
{
case 1: 
return v52;
default: abort ();
}
}
}
}

static void v17 (signed int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = -4;
signed short v55 = -2;
unsigned short v54 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed int v57;
unsigned int v58;
unsigned short v59;
signed char v60;
v57 = 3 - v53;
v58 = 7U + 1U;
v59 = 3 - 0;
v60 = v23 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 9: 
{
unsigned char v61;
signed int v62;
signed short v63;
unsigned short v64;
unsigned int v65;
v61 = 0 + 5;
v62 = v53 + 3;
v63 = -4 - v55;
v64 = 1 - v54;
v65 = v29 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return;
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
unsigned char v68;
unsigned short v69;
signed char v70;
unsigned int v71;
v68 = 7 + 0;
v69 = 0 - 0;
v70 = v32 - v32;
v71 = v1 (v68, v69, v70);
history[history_index++] = (int)v71;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
