#include <stdlib.h>
unsigned char v1 (signed int, signed int, unsigned int, unsigned int);
unsigned char (*v2) (signed int, signed int, unsigned int, unsigned int) = v1;
extern unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned int v5 (unsigned short, unsigned int);
extern unsigned int (*v6) (unsigned short, unsigned int);
signed short v7 (signed char, unsigned int, signed char, unsigned int);
signed short (*v8) (signed char, unsigned int, signed char, unsigned int) = v7;
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (signed int, signed short, signed short);
extern unsigned char (*v14) (signed int, signed short, signed short);
static signed short v15 (signed int, signed short, signed short);
static signed short (*v16) (signed int, signed short, signed short) = v15;
signed short v17 (signed short, signed char, unsigned int);
signed short (*v18) (signed short, signed char, unsigned int) = v17;
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed char, signed char, signed int, signed int);
extern signed int (*v26) (signed char, signed char, signed int, signed int);
extern unsigned int v29 (signed char, unsigned short);
extern unsigned int (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = 3;
unsigned char v56 = 6;
signed short v55 = -3;

signed short v17 (signed short v58, signed char v59, unsigned int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 1;
signed char v62 = 2;
signed int v61 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v15 (signed int v64, signed short v65, signed short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 4;
signed int v68 = -3;
signed short v67 = -3;
trace++;
switch (trace)
{
case 1: 
return v67;
case 3: 
return v67;
default: abort ();
}
}
}
}

signed short v7 (signed char v70, unsigned int v71, signed char v72, unsigned int v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 0;
unsigned char v75 = 5;
unsigned int v74 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v77, signed int v78, unsigned int v79, unsigned int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -4;
unsigned short v82 = 0;
signed int v81 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed int v84;
signed short v85;
signed short v86;
signed short v87;
v84 = v77 + v81;
v85 = -1 - -2;
v86 = 1 - -2;
v87 = v15 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 2: 
{
signed int v88;
signed short v89;
signed short v90;
signed short v91;
v88 = v83 - v77;
v89 = 1 - 3;
v90 = -2 - -4;
v91 = v15 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 4: 
{
unsigned char v92;
v92 = 3 - 1;
v19 (v92);
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
