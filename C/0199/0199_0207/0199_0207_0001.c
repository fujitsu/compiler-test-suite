#include <stdlib.h>
static signed short v3 (signed char, unsigned char, signed int);
static signed short (*v4) (signed char, unsigned char, signed int) = v3;
extern void v5 (unsigned char, unsigned int, unsigned char, signed int);
extern void (*v6) (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char v7 (unsigned char, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
static unsigned short v13 (signed char, signed char);
static unsigned short (*v14) (signed char, signed char) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
unsigned short v19 (unsigned char, unsigned short, unsigned char);
unsigned short (*v20) (unsigned char, unsigned short, unsigned char) = v19;
unsigned int v21 (signed int, signed int);
unsigned int (*v22) (signed int, signed int) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (unsigned short, signed char, signed int);
extern unsigned int (*v26) (unsigned short, signed char, signed int);
unsigned short v27 (signed short, unsigned short, signed char);
unsigned short (*v28) (signed short, unsigned short, signed char) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v55 = 5U;
signed char v54 = -1;
signed int v53 = -4;

signed short v29 (void)
{
{
for (;;) {
unsigned int v58 = 4U;
signed char v57 = -1;
signed short v56 = -3;
trace++;
switch (trace)
{
case 4: 
return v56;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned short v27 (signed short v59, unsigned short v60, signed char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 3;
signed int v63 = -4;
unsigned char v62 = 4;
trace++;
switch (trace)
{
case 10: 
{
signed short v65;
v65 = v29 ();
history[history_index++] = (int)v65;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned int v21 (signed int v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 0;
unsigned int v69 = 2U;
signed short v68 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v71;
unsigned char v72;
signed int v73;
signed short v74;
v71 = 3 + -3;
v72 = 3 + 3;
v73 = v67 - v66;
v74 = v3 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 15: 
return v69;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v75, unsigned short v76, unsigned char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 2;
unsigned char v79 = 7;
signed short v78 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v13 (signed char v81, signed char v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 0U;
signed short v84 = 3;
signed char v83 = -1;
trace++;
switch (trace)
{
case 7: 
return 6;
default: abort ();
}
}
}
}

static signed short v3 (signed char v86, unsigned char v87, signed int v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 7;
unsigned char v90 = 5;
unsigned int v89 = 2U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v92;
signed char v93;
signed int v94;
unsigned int v95;
v92 = 5 - 6;
v93 = v86 - 2;
v94 = v88 - 0;
v95 = v25 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
signed char v96;
signed char v97;
unsigned short v98;
v96 = v86 + v86;
v97 = -3 + -3;
v98 = v13 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 8: 
{
signed short v99;
unsigned short v100;
unsigned char v101;
v99 = 0 + 3;
v100 = 7 - v91;
v101 = v9 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
