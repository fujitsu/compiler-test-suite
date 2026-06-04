#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern void v3 (signed int, unsigned int);
extern void (*v4) (signed int, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed char, signed char, signed int, signed short);
extern void (*v8) (signed char, signed char, signed int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v13 (unsigned char, unsigned char, unsigned int);
unsigned short (*v14) (unsigned char, unsigned char, unsigned int) = v13;
extern unsigned short v15 (unsigned int, signed char);
extern unsigned short (*v16) (unsigned int, signed char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern void v19 (signed char, signed int);
extern void (*v20) (signed char, signed int);
signed short v21 (unsigned char, signed int);
signed short (*v22) (unsigned char, signed int) = v21;
extern signed char v23 (unsigned short, signed int);
extern signed char (*v24) (unsigned short, signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 7;
signed int v122 = 3;
unsigned int v121 = 3U;

signed short v21 (unsigned char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -3;
signed char v127 = 2;
signed char v126 = -1;
trace++;
switch (trace)
{
case 2: 
return 2;
case 4: 
{
signed char v129;
signed char v130;
signed int v131;
signed short v132;
v129 = v127 + 3;
v130 = v126 - v127;
v131 = v125 + v125;
v132 = 0 - -3;
v7 (v129, v130, v131, v132);
}
break;
case 18: 
return 2;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed short v135 = 1;
signed int v134 = -3;
signed char v133 = 2;
trace++;
switch (trace)
{
case 11: 
return 4U;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v136, unsigned char v137, unsigned int v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 1;
signed char v140 = 3;
unsigned int v139 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
