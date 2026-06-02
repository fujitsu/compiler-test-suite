#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned int, unsigned short);
static signed int (*v2) (unsigned int, unsigned short) = v1;
signed short v3 (unsigned int, signed char);
signed short (*v4) (unsigned int, signed char) = v3;
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
static signed short v11 (signed char, signed char);
static signed short (*v12) (signed char, signed char) = v11;
signed int v13 (unsigned short, unsigned short);
signed int (*v14) (unsigned short, unsigned short) = v13;
extern signed char v15 (unsigned char, signed short, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed short, signed int, unsigned int);
static unsigned char v17 (unsigned short, unsigned char, signed char);
static unsigned char (*v18) (unsigned short, unsigned char, signed char) = v17;
signed int v19 (unsigned short);
signed int (*v20) (unsigned short) = v19;
extern void v21 (signed short, signed short, unsigned short, signed char);
extern void (*v22) (signed short, signed short, unsigned short, signed char);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern signed int v25 (signed short, unsigned int, signed short);
extern signed int (*v26) (signed short, unsigned int, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned short v29 (signed char, unsigned int, signed short, signed char);
extern unsigned short (*v30) (signed char, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed short v32 = 3;
unsigned int v31 = 4U;

signed int v19 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -2;
signed short v36 = -3;
signed char v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v17 (unsigned short v38, unsigned char v39, signed char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 1;
signed int v42 = 3;
unsigned int v41 = 4U;
trace++;
switch (trace)
{
case 1: 
{
signed char v44;
signed char v45;
signed short v46;
v44 = -2 - -4;
v45 = v40 + v40;
v46 = v11 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 13: 
return v43;
default: abort ();
}
}
}
}

signed int v13 (unsigned short v47, unsigned short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 6U;
unsigned short v50 = 1;
signed char v49 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (signed char v52, signed char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 1;
signed char v55 = 1;
signed int v54 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed int v57;
unsigned int v58;
v57 = 2 + 3;
v58 = v23 (v57);
history[history_index++] = (int)v58;
}
break;
case 6: 
{
signed int v59;
unsigned int v60;
v59 = -2 + v54;
v60 = v23 (v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v63 = 2;
unsigned short v62 = 3;
signed char v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -2;
signed int v67 = 0;
unsigned int v66 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned int v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -3;
signed short v72 = 3;
signed char v71 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v74;
unsigned char v75;
signed char v76;
unsigned char v77;
v74 = 5 + v70;
v75 = 5 + 3;
v76 = -1 - -3;
v77 = v17 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 14: 
return 0;
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
unsigned int v80;
unsigned short v81;
signed int v82;
v80 = v31 - v31;
v81 = 0 + 2;
v82 = v1 (v80, v81);
history[history_index++] = (int)v82;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
