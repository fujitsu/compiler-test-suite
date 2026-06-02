#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed short, signed char, signed char, unsigned short);
static signed short (*v2) (signed short, signed char, signed char, unsigned short) = v1;
extern signed int v3 (unsigned int, unsigned char);
extern signed int (*v4) (unsigned int, unsigned char);
extern unsigned int v5 (signed char, unsigned char, signed short);
extern unsigned int (*v6) (signed char, unsigned char, signed short);
extern signed int v7 (signed char, signed short);
extern signed int (*v8) (signed char, signed short);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern unsigned char v11 (signed short, unsigned char);
extern unsigned char (*v12) (signed short, unsigned char);
signed int v13 (signed int, unsigned short, unsigned char, signed char);
signed int (*v14) (signed int, unsigned short, unsigned char, signed char) = v13;
signed int v15 (signed char, signed short);
signed int (*v16) (signed char, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
static unsigned short v27 (void);
static unsigned short (*v28) (void) = v27;
extern signed char v29 (unsigned short, signed char);
extern signed char (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned int v32 = 5U;
signed char v31 = -2;

static unsigned short v27 (void)
{
{
for (;;) {
unsigned char v36 = 1;
signed char v35 = 0;
unsigned int v34 = 7U;
trace++;
switch (trace)
{
case 1: 
return 4;
default: abort ();
}
}
}
}

signed int v15 (signed char v37, signed short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 5U;
signed char v40 = 0;
unsigned short v39 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v42, unsigned short v43, unsigned char v44, signed char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 1;
signed int v47 = 3;
signed short v46 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed int v51 = -3;
signed int v50 = -3;
signed char v49 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed short v52, signed char v53, signed char v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 2;
signed int v57 = -2;
unsigned short v56 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v59;
v59 = v27 ();
history[history_index++] = (int)v59;
}
break;
case 2: 
{
signed char v60;
signed short v61;
signed int v62;
v60 = v53 - 2;
v61 = -2 + v52;
v62 = v7 (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 4: 
{
unsigned int v63;
unsigned char v64;
signed int v65;
v63 = 5U + 6U;
v64 = 4 - 1;
v65 = v3 (v63, v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return -3;
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
signed short v68;
signed char v69;
signed char v70;
unsigned short v71;
signed short v72;
v68 = v33 - v33;
v69 = 1 - v31;
v70 = v31 + v31;
v71 = 1 + 0;
v72 = v1 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
