#include <stdlib.h>
signed short v1 (unsigned short, signed char, signed short);
signed short (*v2) (unsigned short, signed char, signed short) = v1;
extern signed char v3 (unsigned char, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned char, unsigned char, signed int, signed int);
static signed int v5 (signed char);
static signed int (*v6) (signed char) = v5;
extern signed char v7 (signed char, signed short);
extern signed char (*v8) (signed char, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern void v11 (unsigned short, unsigned char);
extern void (*v12) (unsigned short, unsigned char);
extern unsigned int v13 (unsigned short, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char);
extern signed short v15 (signed char, unsigned int, unsigned char, signed char);
extern signed short (*v16) (signed char, unsigned int, unsigned char, signed char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
unsigned char v19 (signed int, signed int, unsigned int);
unsigned char (*v20) (signed int, signed int, unsigned int) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned char v25 (signed short, unsigned char, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char, unsigned char);
signed int v29 (unsigned short, signed short, unsigned int);
signed int (*v30) (unsigned short, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v61 = 0;
signed char v60 = -3;
unsigned char v59 = 3;

signed int v29 (unsigned short v62, signed short v63, unsigned int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 4;
signed short v66 = 0;
unsigned char v65 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed short v70 = -3;
signed int v69 = -1;
signed char v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v71, signed int v72, unsigned int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -3;
signed short v75 = -2;
unsigned short v74 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v5 (signed char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 6;
unsigned int v79 = 0U;
unsigned char v78 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed char v81;
signed short v82;
signed char v83;
v81 = v77 - v77;
v82 = 2 - 0;
v83 = v7 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
signed char v84;
signed short v85;
signed char v86;
v84 = v77 - v77;
v85 = 1 - -2;
v86 = v7 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}

signed short v1 (unsigned short v87, signed char v88, signed short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 0;
signed char v91 = 2;
signed char v90 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v93;
signed int v94;
v93 = v90 - v88;
v94 = v5 (v93);
history[history_index++] = (int)v94;
}
break;
case 16: 
return v92;
default: abort ();
}
}
}
}
