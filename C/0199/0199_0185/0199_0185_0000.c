#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, signed char, signed char);
static signed int (*v2) (signed char, signed char, signed char) = v1;
extern void v3 (unsigned int, unsigned int, unsigned int);
extern void (*v4) (unsigned int, unsigned int, unsigned int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed char v7 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v8) (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned int v9 (signed int, signed short, unsigned short);
extern unsigned int (*v10) (signed int, signed short, unsigned short);
static unsigned char v11 (signed char);
static unsigned char (*v12) (signed char) = v11;
extern signed char v13 (unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char);
extern signed int v15 (unsigned char, unsigned short, unsigned int);
extern signed int (*v16) (unsigned char, unsigned short, unsigned int);
static unsigned int v17 (unsigned short, signed char, unsigned int, unsigned short);
static unsigned int (*v18) (unsigned short, signed char, unsigned int, unsigned short) = v17;
signed int v19 (signed int, signed short, unsigned char, unsigned int);
signed int (*v20) (signed int, signed short, unsigned char, unsigned int) = v19;
static void v21 (unsigned int, signed short, signed int, unsigned char);
static void (*v22) (unsigned int, signed short, signed int, unsigned char) = v21;
extern signed short v23 (signed short, unsigned int);
extern signed short (*v24) (signed short, unsigned int);
extern signed char v25 (unsigned short, signed char, unsigned int);
extern signed char (*v26) (unsigned short, signed char, unsigned int);
unsigned char v27 (signed int, unsigned short, signed int, unsigned short);
unsigned char (*v28) (signed int, unsigned short, signed int, unsigned short) = v27;
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed int v32 = 3;
signed int v31 = -3;

unsigned char v27 (signed int v34, unsigned short v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed int v39 = -4;
signed int v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v21 (unsigned int v41, signed short v42, signed int v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 3;
unsigned int v46 = 6U;
unsigned char v45 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v48;
signed char v49;
unsigned int v50;
signed char v51;
v48 = 0 - 7;
v49 = -1 - -1;
v50 = v41 + v46;
v51 = v25 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 8: 
{
signed char v52;
unsigned char v53;
v52 = 0 - 2;
v53 = v11 (v52);
history[history_index++] = (int)v53;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v19 (signed int v54, signed short v55, unsigned char v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 1;
signed int v59 = 2;
signed int v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v17 (unsigned short v61, signed char v62, unsigned int v63, unsigned short v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 6U;
unsigned short v66 = 1;
signed int v65 = -4;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v68;
signed short v69;
signed int v70;
unsigned char v71;
v68 = v67 - v67;
v69 = 1 + 2;
v70 = v65 + v65;
v71 = 6 - 1;
v21 (v68, v69, v70, v71);
}
break;
case 11: 
return v67;
default: abort ();
}
}
}
}

static unsigned char v11 (signed char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = -2;
unsigned int v74 = 1U;
unsigned short v73 = 3;
trace++;
switch (trace)
{
case 9: 
return 4;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed short v78 = 3;
signed char v77 = -1;
unsigned short v76 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v79, signed char v80, signed char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = 1;
unsigned int v83 = 7U;
unsigned short v82 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v85;
unsigned int v86;
signed short v87;
v85 = -2 - -3;
v86 = v83 + 0U;
v87 = v23 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 2: 
{
unsigned char v88;
unsigned short v89;
unsigned int v90;
signed int v91;
v88 = 2 - 2;
v89 = 6 - v82;
v90 = 0U - 1U;
v91 = v15 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 4: 
{
unsigned short v92;
signed char v93;
unsigned int v94;
unsigned short v95;
unsigned int v96;
v92 = v82 - v82;
v93 = 0 + 2;
v94 = v83 + 3U;
v95 = 7 - 7;
v96 = v17 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
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
signed char v99;
signed char v100;
signed char v101;
signed int v102;
v99 = -1 - -2;
v100 = 0 + -4;
v101 = 3 - -3;
v102 = v1 (v99, v100, v101);
history[history_index++] = (int)v102;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
