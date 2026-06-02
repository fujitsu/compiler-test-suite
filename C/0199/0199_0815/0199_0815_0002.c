#include <stdlib.h>
extern unsigned int v1 (signed short, signed int, unsigned int);
extern unsigned int (*v2) (signed short, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int, unsigned int);
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern unsigned char v11 (signed short, signed char);
extern unsigned char (*v12) (signed short, signed char);
signed int v13 (unsigned char, unsigned char, signed int, unsigned int);
signed int (*v14) (unsigned char, unsigned char, signed int, unsigned int) = v13;
signed char v15 (signed short, unsigned char);
signed char (*v16) (signed short, unsigned char) = v15;
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
unsigned int v21 (signed int, signed char, signed char);
unsigned int (*v22) (signed int, signed char, signed char) = v21;
extern void v23 (unsigned int, unsigned int, signed char, unsigned short);
extern void (*v24) (unsigned int, unsigned int, signed char, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed int);
extern unsigned char (*v28) (signed short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v63 = 7;
signed int v62 = 3;
unsigned int v61 = 1U;

unsigned int v21 (signed int v64, signed char v65, signed char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 4;
signed char v68 = -3;
signed short v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -4;
signed char v73 = 0;
unsigned char v72 = 7;
trace++;
switch (trace)
{
case 10: 
{
v25 ();
}
break;
case 12: 
return v74;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v75, unsigned char v76, signed int v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 0;
signed char v80 = -2;
unsigned int v79 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned char v84 = 1;
signed char v83 = 0;
signed char v82 = -3;
trace++;
switch (trace)
{
case 1: 
return 4U;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed short v87 = -2;
unsigned int v86 = 1U;
unsigned char v85 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
