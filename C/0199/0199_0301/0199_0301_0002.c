#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
unsigned char v13 (unsigned int);
unsigned char (*v14) (unsigned int) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
signed int v19 (unsigned short, signed char, unsigned short);
signed int (*v20) (unsigned short, signed char, unsigned short) = v19;
extern void v23 (unsigned char, signed short, unsigned int);
extern void (*v24) (unsigned char, signed short, unsigned int);
signed int v25 (signed short, unsigned char, unsigned short);
signed int (*v26) (signed short, unsigned char, unsigned short) = v25;
extern unsigned short v27 (signed short, signed int, signed int, signed int);
extern unsigned short (*v28) (signed short, signed int, signed int, signed int);
extern void v29 (unsigned int, signed char, unsigned int);
extern void (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 0U;
unsigned short v62 = 4;
unsigned int v61 = 2U;

signed int v25 (signed short v64, unsigned char v65, unsigned short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 2;
unsigned char v68 = 0;
unsigned short v67 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned short v70, signed char v71, unsigned short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 4U;
signed short v74 = 0;
signed short v73 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -1;
unsigned int v78 = 2U;
signed char v77 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v80;
v80 = v15 ();
history[history_index++] = (int)v80;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

unsigned int v3 (signed short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 7;
signed int v83 = 3;
unsigned int v82 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
