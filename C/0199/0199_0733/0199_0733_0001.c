#include <stdlib.h>
extern signed int v3 (unsigned short, signed int, signed short);
extern signed int (*v4) (unsigned short, signed int, signed short);
extern signed short v5 (unsigned int, signed int, unsigned short);
extern signed short (*v6) (unsigned int, signed int, unsigned short);
unsigned int v7 (unsigned short, unsigned short, signed int, signed short);
unsigned int (*v8) (unsigned short, unsigned short, signed int, signed short) = v7;
extern unsigned int v11 (signed short, signed char, signed char, unsigned int);
extern unsigned int (*v12) (signed short, signed char, signed char, unsigned int);
unsigned char v13 (signed short, signed int);
unsigned char (*v14) (signed short, signed int) = v13;
extern unsigned char v15 (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, unsigned char, signed char);
unsigned int v17 (signed short, signed char, unsigned char);
unsigned int (*v18) (signed short, signed char, unsigned char) = v17;
extern signed int v19 (unsigned int, signed char);
extern signed int (*v20) (unsigned int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
extern signed short v25 (unsigned int, unsigned short, unsigned int);
extern signed short (*v26) (unsigned int, unsigned short, unsigned int);
extern unsigned char v27 (unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned int);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 1;
signed char v78 = 3;
unsigned int v77 = 6U;

unsigned int v17 (signed short v80, signed char v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -1;
unsigned short v84 = 4;
signed int v83 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v86;
unsigned short v87;
unsigned int v88;
signed short v89;
v86 = 0U + 4U;
v87 = 2 - 1;
v88 = 1U + 2U;
v89 = v25 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 10: 
return 6U;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 3;
unsigned short v93 = 4;
unsigned short v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v95, unsigned short v96, signed int v97, signed short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -4;
signed short v100 = -2;
unsigned int v99 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
