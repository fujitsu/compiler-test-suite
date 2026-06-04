#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, unsigned short);
extern unsigned char v5 (unsigned int, unsigned short);
extern unsigned char (*v6) (unsigned int, unsigned short);
unsigned int v7 (signed char, signed short, unsigned short);
unsigned int (*v8) (signed char, signed short, unsigned short) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed int v15 (unsigned char, unsigned int, signed short);
signed int (*v16) (unsigned char, unsigned int, signed short) = v15;
signed short v19 (unsigned short, signed short, signed char);
signed short (*v20) (unsigned short, signed short, signed char) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
extern signed char v27 (signed int, unsigned short, signed char, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed char, unsigned char);
signed int v29 (unsigned int, unsigned short);
signed int (*v30) (unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = 1;
signed char v62 = 2;
unsigned char v61 = 4;

signed int v29 (unsigned int v64, unsigned short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 2;
signed short v67 = -1;
signed char v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v69, signed short v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 5;
unsigned int v73 = 5U;
signed short v72 = -2;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v75, unsigned int v76, signed short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -1;
unsigned char v79 = 7;
unsigned int v78 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v81, signed short v82, unsigned short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -2;
unsigned short v85 = 5;
unsigned char v84 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
