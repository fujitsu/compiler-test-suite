#include <stdlib.h>
unsigned char v1 (signed char, unsigned int);
unsigned char (*v2) (signed char, unsigned int) = v1;
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (signed int, unsigned char);
extern void (*v10) (signed int, unsigned char);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
extern void v13 (unsigned short, unsigned int);
extern void (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, signed char, unsigned int, unsigned short);
static unsigned short v17 (unsigned int, unsigned int, signed int, unsigned short);
static unsigned short (*v18) (unsigned int, unsigned int, signed int, unsigned short) = v17;
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed char v21 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, signed char, unsigned char);
extern unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
extern unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short);
signed short v25 (unsigned short);
signed short (*v26) (unsigned short) = v25;
unsigned int v27 (signed short, unsigned short);
unsigned int (*v28) (signed short, unsigned short) = v27;
signed int v29 (unsigned int, signed short, signed short, unsigned int);
signed int (*v30) (unsigned int, signed short, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v46 = 2U;
signed int v45 = -3;
signed int v44 = 1;

signed int v29 (unsigned int v47, signed short v48, signed short v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = -4;
signed char v52 = 3;
signed char v51 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed short v54, unsigned short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 3;
unsigned short v57 = 6;
unsigned short v56 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (unsigned short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 2;
unsigned short v61 = 6;
unsigned int v60 = 6U;
trace++;
switch (trace)
{
case 9: 
return -4;
case 11: 
return 1;
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned int v63, unsigned int v64, signed int v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 7;
unsigned int v68 = 5U;
signed short v67 = -1;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned char v72 = 6;
signed short v71 = -4;
signed char v70 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v73;
signed short v74;
v73 = 3 - 3;
v74 = v7 (v73);
history[history_index++] = (int)v74;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v75, unsigned int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -3;
signed short v78 = -3;
unsigned int v77 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v80;
signed char v81;
unsigned int v82;
unsigned short v83;
unsigned short v84;
v80 = 6U + v77;
v81 = -4 + -1;
v82 = v77 + 2U;
v83 = 3 + 6;
v84 = v15 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 2: 
{
unsigned int v85;
unsigned int v86;
signed int v87;
unsigned short v88;
unsigned short v89;
v85 = 2U - v77;
v86 = v76 - v77;
v87 = v79 + 3;
v88 = 4 - 0;
v89 = v17 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 4: 
{
unsigned int v90;
signed char v91;
unsigned int v92;
unsigned short v93;
unsigned short v94;
v90 = v77 + v76;
v91 = -4 + -2;
v92 = v77 - v76;
v93 = 4 - 5;
v94 = v15 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
