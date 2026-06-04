#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed char v3 (signed short, unsigned short);
extern signed char (*v4) (signed short, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (unsigned int, signed char);
extern void (*v14) (unsigned int, signed char);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
signed char v19 (signed short, signed char, signed short, signed short);
signed char (*v20) (signed short, signed char, signed short, signed short) = v19;
extern signed int v21 (signed char, unsigned int, signed char, signed short);
extern signed int (*v22) (signed char, unsigned int, signed char, signed short);
extern signed char v23 (signed char, signed short, signed short, unsigned short);
extern signed char (*v24) (signed char, signed short, signed short, unsigned short);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
signed int v29 (unsigned char);
signed int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = -1;
unsigned char v120 = 3;
unsigned int v119 = 5U;

signed int v29 (unsigned char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
unsigned short v124 = 7;
signed int v123 = -1;
trace++;
switch (trace)
{
case 11: 
return v123;
default: abort ();
}
}
}
}

signed char v19 (signed short v126, signed char v127, signed short v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -4;
unsigned short v131 = 6;
signed short v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed short v135 = 3;
signed char v134 = -1;
unsigned char v133 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed char v136;
signed short v137;
signed short v138;
unsigned short v139;
signed char v140;
v136 = v134 - v134;
v137 = 1 + v135;
v138 = v135 - v135;
v139 = 7 - 3;
v140 = v23 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 5: 
{
signed char v141;
signed short v142;
signed short v143;
unsigned short v144;
signed char v145;
v141 = v134 - -4;
v142 = 2 + -2;
v143 = 1 - -1;
v144 = 5 + 1;
v145 = v23 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 7: 
{
signed char v146;
signed short v147;
signed short v148;
unsigned short v149;
signed char v150;
v146 = v134 - v134;
v147 = -4 - 0;
v148 = -3 + v135;
v149 = 0 + 0;
v150 = v23 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 9: 
{
signed short v151;
signed short v152;
unsigned short v153;
v151 = v135 - -2;
v152 = v135 - 1;
v153 = v27 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 13: 
return 7;
case 15: 
return 6;
case 17: 
return 4;
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v156 = 2;
signed short v155 = -4;
unsigned char v154 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
