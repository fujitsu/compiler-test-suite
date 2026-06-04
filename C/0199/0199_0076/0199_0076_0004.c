#include <stdlib.h>
extern unsigned char v1 (signed int, signed int, unsigned int, unsigned int);
extern unsigned char (*v2) (signed int, signed int, unsigned int, unsigned int);
extern unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned int v5 (unsigned short, unsigned int);
extern unsigned int (*v6) (unsigned short, unsigned int);
extern signed short v7 (signed char, unsigned int, signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int, signed char, unsigned int);
void v9 (signed char, unsigned char);
void (*v10) (signed char, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned char v13 (signed int, signed short, signed short);
unsigned char (*v14) (signed int, signed short, signed short) = v13;
extern signed short v17 (signed short, signed char, unsigned int);
extern signed short (*v18) (signed short, signed char, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
signed char v21 (signed char, signed char);
signed char (*v22) (signed char, signed char) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed char, signed char, signed int, signed int);
extern signed int (*v26) (signed char, signed char, signed int, signed int);
static unsigned short v27 (unsigned int, signed short, unsigned short, unsigned short);
static unsigned short (*v28) (unsigned int, signed short, unsigned short, unsigned short) = v27;
extern unsigned int v29 (signed char, unsigned short);
extern unsigned int (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v123 = -3;
unsigned short v122 = 2;
unsigned int v121 = 0U;

static unsigned short v27 (unsigned int v124, signed short v125, unsigned short v126, unsigned short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -4;
unsigned short v129 = 5;
signed int v128 = -2;
trace++;
switch (trace)
{
case 8: 
return v129;
case 10: 
return 7;
default: abort ();
}
}
}
}

signed char v21 (signed char v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -1;
unsigned int v134 = 3U;
unsigned short v133 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v136, signed short v137, signed short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -3;
signed int v140 = 3;
unsigned int v139 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v142, unsigned char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 5;
signed int v145 = 2;
signed short v144 = -2;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v147;
signed short v148;
unsigned short v149;
unsigned short v150;
unsigned short v151;
v147 = 7U - 5U;
v148 = v144 - v144;
v149 = 6 + 5;
v150 = 0 - 0;
v151 = v27 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 9: 
{
unsigned int v152;
signed short v153;
unsigned short v154;
unsigned short v155;
unsigned short v156;
v152 = 5U + 4U;
v153 = v144 - v144;
v154 = 7 - 5;
v155 = 6 + 2;
v156 = v27 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
