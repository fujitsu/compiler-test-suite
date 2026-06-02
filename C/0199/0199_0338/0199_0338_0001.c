#include <stdlib.h>
signed short v1 (signed char, signed char);
signed short (*v2) (signed char, signed char) = v1;
extern signed char v3 (unsigned char, signed int);
extern signed char (*v4) (unsigned char, signed int);
extern signed int v5 (unsigned int, unsigned short);
extern signed int (*v6) (unsigned int, unsigned short);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern void v15 (signed short);
extern void (*v16) (signed short);
unsigned short v17 (unsigned short, unsigned int, signed int, signed char);
unsigned short (*v18) (unsigned short, unsigned int, signed int, signed char) = v17;
extern void v19 (signed short);
extern void (*v20) (signed short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed int v25 (unsigned int, unsigned short, unsigned char);
signed int (*v26) (unsigned int, unsigned short, unsigned char) = v25;
extern signed int v27 (unsigned short, unsigned short, signed int);
extern signed int (*v28) (unsigned short, unsigned short, signed int);
unsigned short v29 (signed char, signed short);
unsigned short (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = -1;
signed short v61 = -2;
signed int v60 = -4;

unsigned short v29 (signed char v63, signed short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -2;
unsigned char v66 = 5;
signed char v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned int v68, unsigned short v69, unsigned char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -1;
unsigned char v72 = 4;
signed int v71 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned short v74, unsigned int v75, signed int v76, signed char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 6;
signed char v79 = 1;
unsigned int v78 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed short v83 = -1;
signed char v82 = 0;
unsigned int v81 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v86 = 3;
unsigned short v85 = 2;
unsigned char v84 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v87, signed char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 3;
unsigned int v90 = 6U;
unsigned short v89 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v92;
unsigned short v93;
signed int v94;
signed int v95;
v92 = 3 - 1;
v93 = v89 + 1;
v94 = 1 + -2;
v95 = v27 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
unsigned char v96;
signed short v97;
v96 = 7 - 4;
v97 = v21 (v96);
history[history_index++] = (int)v97;
}
break;
case 10: 
{
unsigned short v98;
unsigned int v99;
v98 = v89 - 7;
v99 = v9 (v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
