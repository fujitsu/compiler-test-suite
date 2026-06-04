#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, unsigned short, signed short);
extern signed int (*v2) (unsigned char, unsigned short, unsigned short, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (unsigned char, signed short);
extern unsigned short (*v10) (unsigned char, signed short);
unsigned int v11 (signed int, signed char);
unsigned int (*v12) (signed int, signed char) = v11;
signed char v13 (signed char, signed char);
signed char (*v14) (signed char, signed char) = v13;
static signed char v15 (unsigned short);
static signed char (*v16) (unsigned short) = v15;
extern signed int v17 (signed int, signed char, signed char);
extern signed int (*v18) (signed int, signed char, signed char);
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern void v21 (unsigned char, signed char, signed short);
extern void (*v22) (unsigned char, signed char, signed short);
extern unsigned short v23 (signed short, signed int);
extern unsigned short (*v24) (signed short, signed int);
extern void v25 (signed short, unsigned short, unsigned char);
extern void (*v26) (signed short, unsigned short, unsigned char);
extern unsigned char v27 (unsigned short, unsigned char, signed short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, signed short, unsigned int);
signed short v29 (signed char, signed char, signed short, unsigned short);
signed short (*v30) (signed char, signed char, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v121 = 0;
signed int v120 = -3;
unsigned short v119 = 3;

signed short v29 (signed char v122, signed char v123, signed short v124, unsigned short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 0;
signed short v127 = 2;
signed short v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v15 (unsigned short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 1;
signed short v131 = -4;
signed int v130 = 3;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed char v13 (signed char v133, signed char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -2;
signed short v136 = -2;
unsigned short v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v138, signed char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 7;
signed short v141 = 2;
signed int v140 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v143;
signed char v144;
signed short v145;
v143 = 1 + v142;
v144 = 1 - 1;
v145 = v141 + 0;
v21 (v143, v144, v145);
}
break;
case 5: 
return 1U;
case 7: 
{
unsigned short v146;
signed char v147;
v146 = 0 + 1;
v147 = v15 (v146);
history[history_index++] = (int)v147;
}
break;
case 9: 
return 0U;
case 11: 
return 3U;
default: abort ();
}
}
}
}
