#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
extern signed short v3 (unsigned int, unsigned char, unsigned int);
extern signed short (*v4) (unsigned int, unsigned char, unsigned int);
extern signed short v5 (signed char, signed char, unsigned char, unsigned int);
extern signed short (*v6) (signed char, signed char, unsigned char, unsigned int);
extern void v7 (signed short, signed short, signed short, signed short);
extern void (*v8) (signed short, signed short, signed short, signed short);
extern void v9 (unsigned short, unsigned short);
extern void (*v10) (unsigned short, unsigned short);
extern unsigned short v11 (signed short, signed int, signed char, signed char);
extern unsigned short (*v12) (signed short, signed int, signed char, signed char);
signed int v13 (signed char);
signed int (*v14) (signed char) = v13;
signed char v15 (unsigned char);
signed char (*v16) (unsigned char) = v15;
extern unsigned int v17 (signed short, unsigned char, signed int, signed int);
extern unsigned int (*v18) (signed short, unsigned char, signed int, signed int);
extern signed int v19 (signed short, unsigned short, signed int, signed int);
extern signed int (*v20) (signed short, unsigned short, signed int, signed int);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed char, unsigned int, unsigned int);
extern signed int (*v28) (signed char, unsigned int, unsigned int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v112 = -1;
unsigned short v111 = 2;
signed short v110 = 1;

signed char v15 (unsigned char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 3;
unsigned char v115 = 0;
signed int v114 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed short v117;
unsigned char v118;
signed int v119;
signed int v120;
unsigned int v121;
v117 = 3 + 0;
v118 = v116 - v113;
v119 = v114 - 1;
v120 = 1 - -2;
v121 = v17 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}

signed int v13 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 0;
unsigned char v124 = 6;
unsigned char v123 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
