#include <stdlib.h>
extern unsigned int v1 (signed short, signed char, unsigned short, signed int);
extern unsigned int (*v2) (signed short, signed char, unsigned short, signed int);
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed char, signed char, signed char, signed short);
extern unsigned int (*v8) (signed char, signed char, signed char, signed short);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern unsigned short v11 (signed int, signed int);
extern unsigned short (*v12) (signed int, signed int);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
unsigned char v15 (signed int, unsigned char, unsigned short, signed int);
unsigned char (*v16) (signed int, unsigned char, unsigned short, signed int) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed char v19 (unsigned int, unsigned short, unsigned short, unsigned short);
signed char (*v20) (unsigned int, unsigned short, unsigned short, unsigned short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned int v23 (signed char, signed int, signed int);
unsigned int (*v24) (signed char, signed int, signed int) = v23;
extern unsigned int v25 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char v27 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned char, unsigned int);
unsigned int v29 (signed char, signed int, unsigned int, unsigned char);
unsigned int (*v30) (signed char, signed int, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v129 = 3;
signed short v128 = 1;
unsigned char v127 = 0;

unsigned int v29 (signed char v130, signed int v131, unsigned int v132, unsigned char v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 6;
signed char v135 = -1;
signed short v134 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v137, signed int v138, signed int v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = 3;
unsigned char v141 = 7;
unsigned char v140 = 4;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v143;
unsigned short v144;
signed char v145;
unsigned int v146;
unsigned int v147;
v143 = 4 + 6;
v144 = 3 + 6;
v145 = v137 + v137;
v146 = 7U - 5U;
v147 = v25 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v148, unsigned short v149, unsigned short v150, unsigned short v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned short v154 = 2;
unsigned short v153 = 3;
signed short v152 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v155, unsigned char v156, unsigned short v157, signed int v158)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
unsigned short v161 = 2;
unsigned short v160 = 7;
unsigned int v159 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
