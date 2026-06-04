#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, signed short);
static unsigned short (*v2) (unsigned short, signed short) = v1;
extern unsigned short v3 (signed int, signed short, unsigned short, unsigned char);
extern unsigned short (*v4) (signed int, signed short, unsigned short, unsigned char);
static signed short v5 (signed int, signed char, unsigned int);
static signed short (*v6) (signed int, signed char, unsigned int) = v5;
unsigned short v7 (signed short, unsigned short, signed short, unsigned int);
unsigned short (*v8) (signed short, unsigned short, signed short, unsigned int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned char v11 (signed short, unsigned int, unsigned short, unsigned int);
unsigned char (*v12) (signed short, unsigned int, unsigned short, unsigned int) = v11;
extern void v13 (signed short, unsigned short, unsigned int);
extern void (*v14) (signed short, unsigned short, unsigned int);
extern signed int v15 (signed short, signed char, signed short, unsigned char);
extern signed int (*v16) (signed short, signed char, signed short, unsigned char);
extern unsigned short v17 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char, unsigned short, unsigned char);
extern void v19 (signed int, signed char, unsigned int);
extern void (*v20) (signed int, signed char, unsigned int);
unsigned char v21 (signed char, signed char, signed char, unsigned short);
unsigned char (*v22) (signed char, signed char, signed char, unsigned short) = v21;
extern void v23 (signed int, signed int, unsigned char, signed int);
extern void (*v24) (signed int, signed int, unsigned char, signed int);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (unsigned char, unsigned char, signed short);
extern unsigned int (*v28) (unsigned char, unsigned char, signed short);
extern signed char v29 (unsigned int, unsigned short, signed char, unsigned char);
extern signed char (*v30) (unsigned int, unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed int v32 = 3;
unsigned char v31 = 4;

unsigned char v21 (signed char v34, signed char v35, signed char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
unsigned char v39 = 7;
unsigned int v38 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v41, unsigned int v42, unsigned short v43, unsigned int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 3;
unsigned char v46 = 5;
unsigned char v45 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v48, unsigned short v49, signed short v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 5U;
unsigned int v53 = 1U;
unsigned char v52 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v5 (signed int v55, signed char v56, unsigned int v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -1;
signed char v59 = -4;
unsigned short v58 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v61;
signed char v62;
signed short v63;
unsigned char v64;
signed int v65;
v61 = 3 + v60;
v62 = v56 + v56;
v63 = v60 + 2;
v64 = 5 + 2;
v65 = v15 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v66, signed short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 3;
unsigned short v69 = 3;
signed int v68 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v71;
signed char v72;
unsigned int v73;
signed short v74;
v71 = 3 - v68;
v72 = -2 - -1;
v73 = 6U + 4U;
v74 = v5 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 12: 
return v66;
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
unsigned short v77;
signed short v78;
unsigned short v79;
v77 = 6 - v33;
v78 = -1 + 3;
v79 = v1 (v77, v78);
history[history_index++] = (int)v79;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
