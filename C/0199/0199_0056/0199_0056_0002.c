#include <stdlib.h>
signed int v1 (unsigned char);
signed int (*v2) (unsigned char) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern void v5 (unsigned short, unsigned int);
extern void (*v6) (unsigned short, unsigned int);
signed char v7 (unsigned int);
signed char (*v8) (unsigned int) = v7;
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern void v13 (signed short, signed int, signed char);
extern void (*v14) (signed short, signed int, signed char);
void v15 (signed int, signed int, unsigned char, signed char);
void (*v16) (signed int, signed int, unsigned char, signed char) = v15;
extern signed short v17 (unsigned short, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char);
static void v19 (void);
static void (*v20) (void) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (signed int, signed int, unsigned int);
extern unsigned char (*v24) (signed int, signed int, unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
unsigned short v29 (unsigned char, signed short, unsigned char);
unsigned short (*v30) (unsigned char, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 6;
unsigned int v68 = 4U;
unsigned char v67 = 7;

unsigned short v29 (unsigned char v70, signed short v71, unsigned char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 4;
signed short v74 = -2;
signed char v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v19 (void)
{
{
for (;;) {
unsigned int v78 = 5U;
signed int v77 = -4;
unsigned int v76 = 0U;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

void v15 (signed int v79, signed int v80, unsigned char v81, signed char v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 5;
unsigned short v84 = 5;
unsigned int v83 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned char v88 = 6;
unsigned int v87 = 0U;
signed char v86 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed short v89;
signed int v90;
signed char v91;
v89 = -3 - -2;
v90 = 0 + -1;
v91 = v86 + v86;
v13 (v89, v90, v91);
}
break;
case 6: 
{
v19 ();
}
break;
case 8: 
{
v19 ();
}
break;
case 10: 
{
v19 ();
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed char v7 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 2;
unsigned char v94 = 6;
signed short v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 1;
unsigned int v98 = 7U;
signed short v97 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v100;
unsigned int v101;
v100 = -4 + -1;
v101 = v3 (v100);
history[history_index++] = (int)v101;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
