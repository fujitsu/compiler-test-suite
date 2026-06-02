#include <stdlib.h>
extern void v1 (signed int, signed int);
extern void (*v2) (signed int, signed int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v7 (unsigned short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, signed short, signed int);
extern unsigned int v9 (signed int, unsigned char);
extern unsigned int (*v10) (signed int, unsigned char);
extern unsigned int v11 (signed char, signed char, unsigned short, signed short);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed short);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
signed int v17 (unsigned int, unsigned int, unsigned char, signed short);
signed int (*v18) (unsigned int, unsigned int, unsigned char, signed short) = v17;
extern unsigned int v19 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
unsigned char v25 (unsigned char, signed char, unsigned int, signed short);
unsigned char (*v26) (unsigned char, signed char, unsigned int, signed short) = v25;
extern unsigned int v27 (unsigned int, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = 1;
unsigned int v75 = 0U;
unsigned int v74 = 2U;

unsigned char v25 (unsigned char v77, signed char v78, unsigned int v79, signed short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 6;
unsigned char v82 = 6;
signed int v81 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v84;
unsigned int v85;
unsigned int v86;
v84 = v79 + 5U;
v85 = 1U - v79;
v86 = v27 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 10: 
{
unsigned int v87;
unsigned int v88;
unsigned int v89;
v87 = v79 - v79;
v88 = 2U - v79;
v89 = v27 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v90, unsigned int v91, unsigned char v92, signed short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 2;
signed char v95 = 0;
unsigned int v94 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
