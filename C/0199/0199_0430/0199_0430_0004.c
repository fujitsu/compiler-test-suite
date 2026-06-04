#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
signed char v3 (signed int, signed char);
signed char (*v4) (signed int, signed char) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed int v7 (unsigned char, signed char, unsigned int);
extern signed int (*v8) (unsigned char, signed char, unsigned int);
extern unsigned short v9 (unsigned char, signed short, signed int, signed char);
extern unsigned short (*v10) (unsigned char, signed short, signed int, signed char);
extern signed char v11 (signed short, unsigned char, signed short);
extern signed char (*v12) (signed short, unsigned char, signed short);
unsigned char v13 (signed short);
unsigned char (*v14) (signed short) = v13;
extern signed char v15 (signed char, signed int, signed char);
extern signed char (*v16) (signed char, signed int, signed char);
signed int v17 (unsigned short, unsigned int, signed int);
signed int (*v18) (unsigned short, unsigned int, signed int) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed char v23 (signed short);
signed char (*v24) (signed short) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v120 = 2;
unsigned short v119 = 1;
signed short v118 = 3;

signed char v23 (signed short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = 0;
unsigned short v123 = 7;
unsigned char v122 = 6;
trace++;
switch (trace)
{
case 7: 
return v124;
case 9: 
{
unsigned short v125;
v125 = v29 ();
history[history_index++] = (int)v125;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed int v17 (unsigned short v126, unsigned int v127, signed int v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -4;
unsigned int v130 = 4U;
signed int v129 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 1;
unsigned char v134 = 3;
signed char v133 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v136, signed char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned int v140 = 4U;
signed short v139 = 2;
unsigned int v138 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
