#include <stdlib.h>
unsigned char v3 (unsigned char, unsigned short, signed int, signed char);
unsigned char (*v4) (unsigned char, unsigned short, signed int, signed char) = v3;
extern void v5 (unsigned char, unsigned char);
extern void (*v6) (unsigned char, unsigned char);
extern void v7 (unsigned short, signed int, signed short);
extern void (*v8) (unsigned short, signed int, signed short);
extern unsigned int v9 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed int, unsigned short, signed short);
extern signed char v11 (unsigned short, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned short, unsigned short, signed char, signed short);
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
static unsigned int v17 (signed char, unsigned int, signed int, signed int);
static unsigned int (*v18) (signed char, unsigned int, signed int, signed int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
static signed int v21 (unsigned short);
static signed int (*v22) (unsigned short) = v21;
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned int v27 (unsigned int, signed char, signed char, signed char);
extern unsigned int (*v28) (unsigned int, signed char, signed char, signed char);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v129 = 0;
unsigned short v128 = 1;
signed int v127 = 2;

static signed int v21 (unsigned short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 5U;
signed int v132 = -1;
signed int v131 = 1;
trace++;
switch (trace)
{
case 8: 
return v132;
default: abort ();
}
}
}
}

static unsigned int v17 (signed char v134, unsigned int v135, signed int v136, signed int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 0;
signed int v139 = 0;
signed short v138 = -4;
trace++;
switch (trace)
{
case 10: 
{
signed char v141;
unsigned int v142;
signed int v143;
signed int v144;
unsigned int v145;
v141 = 3 + v134;
v142 = 6U - 1U;
v143 = v139 + v136;
v144 = v137 + v137;
v145 = v17 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 11: 
return v135;
case 12: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = 1;
signed char v148 = 0;
signed short v147 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v150;
signed int v151;
v150 = 5 - 1;
v151 = v21 (v150);
history[history_index++] = (int)v151;
}
break;
case 9: 
{
signed char v152;
unsigned int v153;
signed int v154;
signed int v155;
unsigned int v156;
v152 = v149 + -2;
v153 = 2U + 5U;
v154 = 1 + 0;
v155 = 1 - -2;
v156 = v17 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v157, unsigned short v158, signed int v159, signed char v160)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
{
for (;;) {
unsigned short v163 = 6;
unsigned int v162 = 0U;
unsigned char v161 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
