#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned short v3 (unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned int, unsigned char);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
unsigned short v11 (signed int, unsigned char, unsigned short, signed char);
unsigned short (*v12) (signed int, unsigned char, unsigned short, signed char) = v11;
signed short v13 (unsigned char, signed short, signed char, signed short);
signed short (*v14) (unsigned char, signed short, signed char, signed short) = v13;
signed short v15 (unsigned short, signed int);
signed short (*v16) (unsigned short, signed int) = v15;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed char v19 (signed int, signed int, signed char, signed int);
extern signed char (*v20) (signed int, signed int, signed char, signed int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern signed char v23 (signed short, unsigned int, signed char, unsigned short);
extern signed char (*v24) (signed short, unsigned int, signed char, unsigned short);
unsigned short v25 (unsigned int, unsigned char, signed char);
unsigned short (*v26) (unsigned int, unsigned char, signed char) = v25;
extern void v27 (signed int, unsigned short, signed char);
extern void (*v28) (signed int, unsigned short, signed char);
extern unsigned int v29 (unsigned short, signed char, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = 0;
signed char v61 = 2;
signed short v60 = -2;

unsigned short v25 (unsigned int v63, unsigned char v64, signed char v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -3;
signed char v67 = -3;
signed int v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed short v71 = -3;
unsigned int v70 = 4U;
unsigned char v69 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -3;
unsigned char v75 = 2;
unsigned char v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v77, signed short v78, signed char v79, signed short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 5U;
signed char v82 = -4;
unsigned int v81 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v84, unsigned char v85, unsigned short v86, signed char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = -2;
unsigned char v89 = 2;
signed int v88 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v93 = 0;
signed short v92 = -4;
unsigned int v91 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed int v94;
signed char v95;
v94 = 3 - -2;
v95 = v17 (v94);
history[history_index++] = (int)v95;
}
break;
case 18: 
return 3;
default: abort ();
}
}
}
}
