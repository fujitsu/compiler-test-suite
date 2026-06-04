#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, signed short, signed char);
extern unsigned short (*v2) (signed int, signed char, signed short, signed char);
extern unsigned short v3 (unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned int, unsigned short, signed char);
extern signed int v5 (unsigned char, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, unsigned char, signed int);
extern signed char (*v12) (unsigned short, unsigned char, signed int);
extern void v13 (unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned char);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned short v17 (unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short);
extern unsigned char v19 (signed char, signed int, unsigned char, signed char);
extern unsigned char (*v20) (signed char, signed int, unsigned char, signed char);
signed char v23 (signed short, unsigned int, signed short);
signed char (*v24) (signed short, unsigned int, signed short) = v23;
extern signed short v25 (signed short, unsigned short, signed short);
extern signed short (*v26) (signed short, unsigned short, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed short v29 (unsigned int, signed short, unsigned int);
signed short (*v30) (unsigned int, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = 3;
unsigned char v121 = 4;
unsigned char v120 = 7;

signed short v29 (unsigned int v123, signed short v124, unsigned int v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 1;
signed char v127 = 2;
signed short v126 = -3;
trace++;
switch (trace)
{
case 4: 
return v124;
case 6: 
return v126;
case 8: 
return v126;
case 10: 
return v126;
default: abort ();
}
}
}
}

signed char v23 (signed short v129, unsigned int v130, signed short v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 2U;
unsigned char v133 = 2;
unsigned int v132 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v137 = 1;
signed int v136 = 3;
unsigned int v135 = 0U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v138;
unsigned short v139;
unsigned short v140;
v138 = v137 - v137;
v139 = v137 + v137;
v140 = v17 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 13: 
return v137;
default: abort ();
}
}
}
}
