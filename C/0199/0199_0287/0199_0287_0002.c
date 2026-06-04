#include <stdlib.h>
signed char v1 (unsigned int, unsigned int, signed char, signed int);
signed char (*v2) (unsigned int, unsigned int, signed char, signed int) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed int v13 (signed int);
extern signed int (*v14) (signed int);
unsigned short v15 (unsigned int, signed short, unsigned short, signed char);
unsigned short (*v16) (unsigned int, signed short, unsigned short, signed char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, signed char, unsigned int);
extern unsigned char (*v20) (signed int, unsigned char, signed char, unsigned int);
extern signed int v21 (signed int, signed char, unsigned char, unsigned char);
extern signed int (*v22) (signed int, signed char, unsigned char, unsigned char);
extern unsigned int v23 (unsigned char, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned int, unsigned short, signed int);
signed short v25 (signed short, unsigned char, signed short, signed int);
signed short (*v26) (signed short, unsigned char, signed short, signed int) = v25;
extern void v27 (signed short, signed char, signed int);
extern void (*v28) (signed short, signed char, signed int);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v62 = 1;
signed int v61 = -4;
unsigned short v60 = 2;

signed char v29 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 2;
unsigned char v65 = 0;
unsigned char v64 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed short v67, unsigned char v68, signed short v69, signed int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -1;
signed char v72 = 0;
unsigned int v71 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v74, signed short v75, unsigned short v76, signed char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -4;
signed char v79 = -3;
unsigned char v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed int v83 = 3;
unsigned int v82 = 4U;
unsigned char v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v84, unsigned int v85, signed char v86, signed int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 1;
signed int v89 = 1;
signed int v88 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v91;
v91 = v17 ();
history[history_index++] = (int)v91;
}
break;
case 16: 
return v86;
default: abort ();
}
}
}
}
