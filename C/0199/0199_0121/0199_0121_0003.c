#include <stdlib.h>
unsigned int v1 (signed char, unsigned int);
unsigned int (*v2) (signed char, unsigned int) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned char, signed int, signed int);
extern void (*v12) (unsigned char, signed int, signed int);
extern signed char v13 (signed int, signed char, unsigned short, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short, unsigned short);
extern unsigned int v15 (signed char, unsigned int);
extern unsigned int (*v16) (signed char, unsigned int);
unsigned int v17 (unsigned char, signed short, signed short, unsigned char);
unsigned int (*v18) (unsigned char, signed short, signed short, unsigned char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (signed int, unsigned int, signed int, unsigned short);
extern unsigned char (*v22) (signed int, unsigned int, signed int, unsigned short);
extern unsigned char v23 (signed char, unsigned char, signed char);
extern unsigned char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed char, unsigned char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned char, unsigned short);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v115 = 2;
signed int v114 = 2;
signed int v113 = -2;

unsigned int v17 (unsigned char v116, signed short v117, signed short v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 2;
unsigned int v121 = 2U;
signed short v120 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v123, unsigned int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -2;
signed char v126 = 1;
signed short v125 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v128;
signed char v129;
v128 = v124 + 2U;
v129 = v3 (v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
{
v9 ();
}
break;
case 4: 
{
unsigned int v130;
signed char v131;
v130 = 7U + v124;
v131 = v3 (v130);
history[history_index++] = (int)v131;
}
break;
case 6: 
{
unsigned int v132;
signed char v133;
v132 = v124 + v124;
v133 = v3 (v132);
history[history_index++] = (int)v133;
}
break;
case 14: 
return v124;
default: abort ();
}
}
}
}
