#include <stdlib.h>
signed char v1 (signed short, signed short, signed short);
signed char (*v2) (signed short, signed short, signed short) = v1;
extern unsigned short v3 (unsigned short, signed int, unsigned char);
extern unsigned short (*v4) (unsigned short, signed int, unsigned char);
extern unsigned int v5 (signed char, signed int, unsigned int);
extern unsigned int (*v6) (signed char, signed int, unsigned int);
extern unsigned char v7 (signed short, unsigned int, unsigned int);
extern unsigned char (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed int v15 (unsigned char, signed int, unsigned char);
extern signed int (*v16) (unsigned char, signed int, unsigned char);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned short v21 (unsigned short, signed short, unsigned char);
extern unsigned short (*v22) (unsigned short, signed short, unsigned char);
unsigned int v23 (signed char, unsigned char, signed char, unsigned int);
unsigned int (*v24) (signed char, unsigned char, signed char, unsigned int) = v23;
unsigned int v25 (signed short, signed char, signed char);
unsigned int (*v26) (signed short, signed char, signed char) = v25;
extern unsigned short v27 (unsigned short, signed short);
extern unsigned short (*v28) (unsigned short, signed short);
unsigned char v29 (signed int, signed short);
unsigned char (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v66 = 2;
unsigned short v65 = 2;
unsigned int v64 = 6U;

unsigned char v29 (signed int v67, signed short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 3;
unsigned int v70 = 2U;
unsigned char v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed short v72, signed char v73, signed char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 2;
signed char v76 = 3;
unsigned short v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v78, unsigned char v79, signed char v80, unsigned int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 1;
unsigned char v83 = 4;
unsigned char v82 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v85, signed short v86, signed short v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 0U;
unsigned int v89 = 3U;
unsigned int v88 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v91;
signed short v92;
unsigned short v93;
v91 = 7 - 3;
v92 = 0 + v85;
v93 = v27 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 18: 
return -1;
default: abort ();
}
}
}
}
