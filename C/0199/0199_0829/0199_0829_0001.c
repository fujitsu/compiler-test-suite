#include <stdlib.h>
extern signed int v1 (signed int, signed short);
extern signed int (*v2) (signed int, signed short);
unsigned int v3 (unsigned char);
unsigned int (*v4) (unsigned char) = v3;
signed char v5 (signed int, signed char);
signed char (*v6) (signed int, signed char) = v5;
extern unsigned short v7 (unsigned char, signed int);
extern unsigned short (*v8) (unsigned char, signed int);
static unsigned char v9 (signed char, unsigned int, signed int);
static unsigned char (*v10) (signed char, unsigned int, signed int) = v9;
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
extern signed char v13 (unsigned char, unsigned int, signed char, signed short);
extern signed char (*v14) (unsigned char, unsigned int, signed char, signed short);
extern signed short v15 (unsigned char, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned char, signed short, signed short, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned short v19 (signed int, signed int, signed int);
extern unsigned short (*v20) (signed int, signed int, signed int);
extern void v21 (void);
extern void (*v22) (void);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed int v25 (signed int, unsigned short, unsigned int, unsigned int);
extern signed int (*v26) (signed int, unsigned short, unsigned int, unsigned int);
extern void v27 (unsigned int);
extern void (*v28) (unsigned int);
unsigned char v29 (signed short, signed int, unsigned int);
unsigned char (*v30) (signed short, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = 0;
signed int v54 = -2;
signed short v53 = -4;

unsigned char v29 (signed short v56, signed int v57, unsigned int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 1;
signed char v60 = 1;
unsigned int v59 = 4U;
trace++;
switch (trace)
{
case 3: 
{
signed char v62;
unsigned int v63;
signed int v64;
unsigned char v65;
v62 = -4 - v60;
v63 = v59 - 2U;
v64 = v61 - v61;
v65 = v9 (v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 7: 
{
signed char v66;
unsigned int v67;
signed int v68;
unsigned char v69;
v66 = 3 - 3;
v67 = 5U - 2U;
v68 = v61 - v61;
v69 = v9 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed char v11 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 1;
unsigned int v72 = 1U;
unsigned char v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v9 (signed char v74, unsigned int v75, signed int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 2;
signed short v78 = -1;
unsigned short v77 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v80;
unsigned short v81;
unsigned int v82;
unsigned int v83;
signed int v84;
v80 = 3 + -1;
v81 = v77 + 7;
v82 = 7U - 5U;
v83 = 6U + 3U;
v84 = v25 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 6: 
return 4;
case 8: 
{
v21 ();
}
break;
case 10: 
{
v21 ();
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (signed int v85, signed char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 4U;
signed char v88 = -3;
unsigned char v87 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 0;
unsigned char v92 = 6;
unsigned int v91 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed char v94;
unsigned short v95;
v94 = 1 + -4;
v95 = v17 (v94);
history[history_index++] = (int)v95;
}
break;
case 15: 
return v91;
default: abort ();
}
}
}
}
