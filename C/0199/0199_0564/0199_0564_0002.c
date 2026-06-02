#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned int v3 (unsigned short, signed short, signed int, unsigned char);
unsigned int (*v4) (unsigned short, signed short, signed int, unsigned char) = v3;
extern unsigned short v7 (signed short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned int);
extern unsigned int v9 (unsigned short, signed char, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int);
extern signed short v11 (signed char, unsigned short, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned short, unsigned char);
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern signed short v15 (signed char, unsigned int);
extern signed short (*v16) (signed char, unsigned int);
extern void v19 (signed short, signed char, unsigned char);
extern void (*v20) (signed short, signed char, unsigned char);
extern unsigned char v21 (signed char, unsigned int, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned char, signed char);
unsigned char v23 (unsigned short, signed int);
unsigned char (*v24) (unsigned short, signed int) = v23;
extern unsigned short v25 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned short (*v26) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v27 (unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, signed char);
extern unsigned char v29 (unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 7;
signed int v78 = -1;
unsigned short v77 = 4;

unsigned char v23 (unsigned short v80, signed int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 5U;
signed short v83 = 3;
unsigned int v82 = 5U;
trace++;
switch (trace)
{
case 6: 
return 4;
case 8: 
{
unsigned int v85;
signed char v86;
unsigned char v87;
unsigned char v88;
unsigned short v89;
v85 = 2U - v82;
v86 = 3 + -1;
v87 = 1 + 4;
v88 = 1 - 7;
v89 = v25 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 10: 
{
unsigned int v90;
signed char v91;
unsigned char v92;
unsigned char v93;
unsigned short v94;
v90 = v82 + v84;
v91 = -1 - 1;
v92 = 6 - 6;
v93 = 4 - 1;
v94 = v25 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v95, signed short v96, signed int v97, unsigned char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 1;
signed char v100 = -4;
signed int v99 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
