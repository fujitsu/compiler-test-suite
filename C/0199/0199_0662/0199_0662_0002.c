#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed char);
extern unsigned int (*v2) (unsigned char, unsigned char, signed char);
signed char v3 (signed char);
signed char (*v4) (signed char) = v3;
unsigned int v5 (signed short, signed short, unsigned char, signed short);
unsigned int (*v6) (signed short, signed short, unsigned char, signed short) = v5;
static signed short v7 (void);
static signed short (*v8) (void) = v7;
signed short v9 (unsigned short, unsigned short);
signed short (*v10) (unsigned short, unsigned short) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned short, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v21 (signed int, unsigned char);
extern void (*v22) (signed int, unsigned char);
extern void v23 (unsigned char, unsigned short, unsigned char, unsigned int);
extern void (*v24) (unsigned char, unsigned short, unsigned char, unsigned int);
unsigned char v25 (signed int, unsigned short);
unsigned char (*v26) (signed int, unsigned short) = v25;
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v65 = 3;
signed short v64 = -1;
signed int v63 = -2;

unsigned char v25 (signed int v66, unsigned short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 6U;
signed int v69 = -1;
signed int v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -2;
unsigned char v74 = 6;
unsigned short v73 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v7 (void)
{
{
for (;;) {
signed char v78 = 2;
signed short v77 = -3;
unsigned int v76 = 3U;
trace++;
switch (trace)
{
case 10: 
{
v29 ();
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned int v5 (signed short v79, signed short v80, unsigned char v81, signed short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 7;
signed short v84 = -1;
signed char v83 = -2;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v86;
unsigned short v87;
unsigned char v88;
unsigned int v89;
v86 = v81 - 3;
v87 = 0 + v85;
v88 = v81 + v81;
v89 = 5U + 1U;
v23 (v86, v87, v88, v89);
}
break;
case 7: 
return 4U;
case 9: 
{
signed short v90;
v90 = v7 ();
history[history_index++] = (int)v90;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}

signed char v3 (signed char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 1;
unsigned char v93 = 1;
unsigned short v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
