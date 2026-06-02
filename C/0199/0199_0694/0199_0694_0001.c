#include <stdlib.h>
unsigned char v1 (signed int);
unsigned char (*v2) (signed int) = v1;
extern unsigned short v3 (unsigned int, unsigned int, signed short, signed int);
extern unsigned short (*v4) (unsigned int, unsigned int, signed short, signed int);
static unsigned short v5 (signed int);
static unsigned short (*v6) (signed int) = v5;
extern signed int v7 (signed short, signed short);
extern signed int (*v8) (signed short, signed short);
extern void v9 (unsigned char, unsigned short);
extern void (*v10) (unsigned char, unsigned short);
extern unsigned char v11 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed short, unsigned char);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
unsigned short v15 (signed short, signed int);
unsigned short (*v16) (signed short, signed int) = v15;
signed short v17 (unsigned short);
signed short (*v18) (unsigned short) = v17;
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char (*v24) (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (unsigned char, signed char, unsigned int, signed int);
extern void (*v28) (unsigned char, signed char, unsigned int, signed int);
unsigned short v29 (signed int, unsigned int, signed short);
unsigned short (*v30) (signed int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = 1;
signed char v60 = 0;
unsigned int v59 = 6U;

unsigned short v29 (signed int v62, unsigned int v63, signed short v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 0;
signed short v66 = -3;
unsigned char v65 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 2;
unsigned short v70 = 5;
signed char v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 2;
signed int v75 = -1;
signed short v74 = 3;
trace++;
switch (trace)
{
case 10: 
return 6;
default: abort ();
}
}
}
}

static unsigned short v5 (signed int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 6;
signed short v79 = -2;
unsigned short v78 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed short v81;
signed short v82;
signed int v83;
v81 = 0 - v79;
v82 = -3 + v79;
v83 = v7 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 13: 
return v80;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 1;
unsigned short v86 = 1;
unsigned char v85 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v88;
unsigned int v89;
v88 = 5 + 5;
v89 = v25 (v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
signed int v90;
unsigned short v91;
v90 = -1 + v84;
v91 = v5 (v90);
history[history_index++] = (int)v91;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
