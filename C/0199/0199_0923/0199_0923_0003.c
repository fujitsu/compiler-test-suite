#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned int);
extern signed short v7 (unsigned char, signed int, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed int, signed char, unsigned short);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v15 (signed char, unsigned int, unsigned short);
extern unsigned int (*v16) (signed char, unsigned int, unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
signed char v21 (signed char, unsigned short, unsigned int, unsigned int);
signed char (*v22) (signed char, unsigned short, unsigned int, unsigned int) = v21;
unsigned int v23 (signed short, unsigned int, signed int, signed short);
unsigned int (*v24) (signed short, unsigned int, signed int, signed short) = v23;
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
signed short v29 (signed short);
signed short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 7;
unsigned int v114 = 6U;
signed char v113 = 0;

signed short v29 (signed short v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 0U;
unsigned char v118 = 0;
unsigned short v117 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed short v120, unsigned int v121, signed int v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 2;
signed char v125 = -4;
unsigned short v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v127, unsigned short v128, unsigned int v129, unsigned int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 3U;
unsigned short v132 = 6;
signed short v131 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed int v134;
unsigned short v135;
unsigned int v136;
v134 = 2 + -4;
v135 = v132 - 5;
v136 = v27 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 7: 
{
signed int v137;
unsigned short v138;
unsigned int v139;
v137 = 3 - -3;
v138 = 6 + v132;
v139 = v27 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 9: 
return 2;
default: abort ();
}
}
}
}
