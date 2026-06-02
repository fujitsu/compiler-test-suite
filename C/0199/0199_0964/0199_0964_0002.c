#include <stdlib.h>
signed short v1 (signed char, signed short, unsigned char, unsigned char);
signed short (*v2) (signed char, signed short, unsigned char, unsigned char) = v1;
extern void v3 (signed int, signed int, signed short);
extern void (*v4) (signed int, signed int, signed short);
extern signed short v5 (unsigned short, signed int);
extern signed short (*v6) (unsigned short, signed int);
signed int v7 (signed char);
signed int (*v8) (signed char) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern void v13 (unsigned char, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned int, signed char);
static unsigned short v15 (signed short, unsigned short);
static unsigned short (*v16) (signed short, unsigned short) = v15;
unsigned short v17 (signed int, signed char, signed int);
unsigned short (*v18) (signed int, signed char, signed int) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern signed int v23 (unsigned short, signed char, unsigned char);
extern signed int (*v24) (unsigned short, signed char, unsigned char);
extern void v25 (signed int, signed char, signed char, signed char);
extern void (*v26) (signed int, signed char, signed char, signed char);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = -1;
unsigned short v56 = 4;
unsigned char v55 = 3;

unsigned short v17 (signed int v58, signed char v59, signed int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned int v62 = 1U;
signed char v61 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (signed short v64, unsigned short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 1;
signed int v67 = 3;
signed short v66 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v69;
signed char v70;
unsigned char v71;
signed int v72;
v69 = 1 - v65;
v70 = v68 - -4;
v71 = 5 - 6;
v72 = v23 (v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 3: 
{
unsigned short v73;
signed char v74;
unsigned char v75;
signed int v76;
v73 = v65 - v65;
v74 = 1 + v68;
v75 = 1 - 7;
v76 = v23 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 5: 
return v65;
default: abort ();
}
}
}
}

signed int v7 (signed char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 0;
signed short v79 = -2;
signed char v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v81, signed short v82, unsigned char v83, unsigned char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 3;
signed short v86 = 0;
signed int v85 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v88;
unsigned short v89;
unsigned short v90;
v88 = v86 + -2;
v89 = 6 + 0;
v90 = v15 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 6: 
{
unsigned char v91;
unsigned int v92;
signed char v93;
v91 = v84 - 1;
v92 = 6U + 0U;
v93 = -2 + -2;
v13 (v91, v92, v93);
}
break;
case 10: 
{
signed short v94;
signed int v95;
unsigned char v96;
v94 = v82 - v82;
v95 = 1 - -3;
v96 = v21 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
