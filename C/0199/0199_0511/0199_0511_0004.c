#include <stdlib.h>
extern void v1 (unsigned char, signed char);
extern void (*v2) (unsigned char, signed char);
unsigned short v3 (signed char, unsigned short, unsigned short);
unsigned short (*v4) (signed char, unsigned short, unsigned short) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
signed int v9 (signed int);
signed int (*v10) (signed int) = v9;
extern unsigned short v11 (signed short, signed char, signed short, unsigned char);
extern unsigned short (*v12) (signed short, signed char, signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern void v17 (signed int, unsigned short, signed int, signed short);
extern void (*v18) (signed int, unsigned short, signed int, signed short);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern unsigned int v27 (signed int, unsigned short, signed short, signed short);
extern unsigned int (*v28) (signed int, unsigned short, signed short, signed short);
extern signed int v29 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v30) (signed int, unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v123 = 5U;
unsigned char v122 = 3;
unsigned int v121 = 7U;

signed int v9 (signed int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 5U;
unsigned short v126 = 0;
signed short v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed short v130 = 2;
unsigned char v129 = 0;
unsigned int v128 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v131, unsigned short v132, unsigned short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -3;
unsigned int v135 = 0U;
signed int v134 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed int v137;
unsigned int v138;
v137 = 0 + -2;
v138 = v15 (v137);
history[history_index++] = (int)v138;
}
break;
case 8: 
{
signed int v139;
unsigned int v140;
v139 = v134 - -2;
v140 = v15 (v139);
history[history_index++] = (int)v140;
}
break;
case 10: 
return v133;
default: abort ();
}
}
}
}
