#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern signed short v3 (signed char, unsigned int, unsigned int, signed short);
extern signed short (*v4) (signed char, unsigned int, unsigned int, signed short);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
static unsigned int v9 (signed char, unsigned short);
static unsigned int (*v10) (signed char, unsigned short) = v9;
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
unsigned char v13 (signed short, signed short);
unsigned char (*v14) (signed short, signed short) = v13;
static unsigned char v15 (signed int, unsigned int);
static unsigned char (*v16) (signed int, unsigned int) = v15;
void v17 (unsigned short, signed short);
void (*v18) (unsigned short, signed short) = v17;
extern unsigned short v19 (unsigned char, signed int, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed int, signed char, unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (unsigned short, unsigned int, signed int, unsigned int);
extern unsigned char (*v24) (unsigned short, unsigned int, signed int, unsigned int);
signed short v25 (signed short, unsigned int, signed int, unsigned char);
signed short (*v26) (signed short, unsigned int, signed int, unsigned char) = v25;
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
extern signed char v29 (unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v56 = -1;
signed char v55 = -4;
unsigned int v54 = 0U;

signed short v25 (signed short v57, unsigned int v58, signed int v59, unsigned char v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 0U;
signed char v62 = 0;
signed int v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v64, signed short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 1;
unsigned int v67 = 5U;
signed int v66 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v15 (signed int v69, unsigned int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -3;
signed short v72 = 0;
signed short v71 = -2;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v74, signed short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -2;
signed short v77 = -1;
signed int v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v9 (signed char v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 1U;
signed int v82 = -3;
signed int v81 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v84;
signed short v85;
signed char v86;
v84 = v80 - v80;
v85 = 0 + 2;
v86 = v11 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 3: 
{
signed char v87;
unsigned char v88;
v87 = v79 - -2;
v88 = v27 (v87);
history[history_index++] = (int)v88;
}
break;
case 5: 
{
signed char v89;
unsigned char v90;
v89 = v79 + v79;
v90 = v27 (v89);
history[history_index++] = (int)v90;
}
break;
case 7: 
{
signed int v91;
unsigned int v92;
unsigned char v93;
v91 = v82 + v81;
v92 = 0U + v83;
v93 = v15 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 9: 
{
unsigned short v94;
signed short v95;
signed char v96;
v94 = v80 - 3;
v95 = -2 - -3;
v96 = v11 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 13: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed int v99 = 3;
signed int v98 = -1;
unsigned char v97 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v100;
unsigned short v101;
unsigned int v102;
v100 = 1 - 3;
v101 = 4 + 7;
v102 = v9 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return 4U;
default: abort ();
}
}
}
}
