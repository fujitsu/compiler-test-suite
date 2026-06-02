#include <stdlib.h>
unsigned int v1 (unsigned short, signed char, signed short, unsigned short);
unsigned int (*v2) (unsigned short, signed char, signed short, unsigned short) = v1;
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed short v5 (unsigned char, unsigned char, unsigned int);
extern signed short (*v6) (unsigned char, unsigned char, unsigned int);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
unsigned short v9 (signed int, unsigned char, signed short);
unsigned short (*v10) (signed int, unsigned char, signed short) = v9;
extern unsigned short v11 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short);
unsigned short v13 (unsigned char);
unsigned short (*v14) (unsigned char) = v13;
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
signed char v23 (signed char, unsigned short, unsigned int, unsigned int);
signed char (*v24) (signed char, unsigned short, unsigned int, unsigned int) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned int, signed short, unsigned char, signed short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = 1;
unsigned short v54 = 3;
signed int v53 = 3;

signed short v29 (void)
{
{
for (;;) {
signed char v58 = 0;
signed short v57 = 2;
unsigned int v56 = 0U;
trace++;
switch (trace)
{
case 2: 
return v57;
case 6: 
return v57;
default: abort ();
}
}
}
}

signed char v23 (signed char v59, unsigned short v60, unsigned int v61, unsigned int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 5;
signed short v64 = 3;
signed char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 2;
unsigned short v68 = 4;
unsigned char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v70, unsigned char v71, signed short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 2;
unsigned int v74 = 4U;
signed int v73 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 6U;
unsigned int v78 = 1U;
signed int v77 = -2;
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

unsigned int v1 (unsigned short v80, signed char v81, signed short v82, unsigned short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 6U;
signed int v85 = -4;
unsigned short v84 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v87;
unsigned char v88;
unsigned int v89;
signed short v90;
v87 = 2 - 7;
v88 = 2 - 1;
v89 = 1U + v86;
v90 = v5 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 10: 
{
signed int v91;
v91 = -1 - v85;
v3 (v91);
}
break;
case 12: 
return v86;
default: abort ();
}
}
}
}
