#include <stdlib.h>
extern signed short v1 (unsigned short, signed char, signed short);
extern signed short (*v2) (unsigned short, signed char, signed short);
extern signed char v3 (unsigned char, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned char, unsigned char, signed int, signed int);
extern signed char v7 (signed char, signed short);
extern signed char (*v8) (signed char, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern void v11 (unsigned short, unsigned char);
extern void (*v12) (unsigned short, unsigned char);
unsigned int v13 (unsigned short, unsigned char);
unsigned int (*v14) (unsigned short, unsigned char) = v13;
signed short v15 (signed char, unsigned int, unsigned char, signed char);
signed short (*v16) (signed char, unsigned int, unsigned char, signed char) = v15;
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern unsigned char v19 (signed int, signed int, unsigned int);
extern unsigned char (*v20) (signed int, signed int, unsigned int);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (signed short, unsigned char, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char, unsigned char);
extern signed int v29 (unsigned short, signed short, unsigned int);
extern signed int (*v30) (unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v124 = 3U;
unsigned int v123 = 5U;
signed char v122 = -4;

signed short v17 (unsigned int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 3;
unsigned char v127 = 1;
signed int v126 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v129, unsigned int v130, unsigned char v131, signed char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 1;
unsigned short v134 = 4;
signed char v133 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed short v136;
unsigned char v137;
unsigned char v138;
unsigned char v139;
v136 = -3 - -3;
v137 = v131 - 1;
v138 = 1 + v131;
v139 = v25 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 7: 
{
signed short v140;
signed short v141;
v140 = 2 - 0;
v141 = v21 (v140);
history[history_index++] = (int)v141;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v142, unsigned char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -4;
unsigned char v145 = 1;
unsigned short v144 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
