#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern void v3 (signed char, signed char, unsigned int);
extern void (*v4) (signed char, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed short);
extern unsigned int (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char);
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
signed char v11 (signed short, signed int, signed char, unsigned int);
signed char (*v12) (signed short, signed int, signed char, unsigned int) = v11;
extern signed char v13 (unsigned int, signed int);
extern signed char (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed char, unsigned char);
extern unsigned char (*v16) (signed char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
static unsigned int v23 (unsigned short);
static unsigned int (*v24) (unsigned short) = v23;
extern unsigned short v25 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned short, unsigned int);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
signed char v29 (signed short, signed int, unsigned char);
signed char (*v30) (signed short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v111 = 7;
unsigned short v110 = 7;
signed int v109 = -4;

signed char v29 (signed short v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
unsigned int v116 = 5U;
signed int v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v23 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 1U;
unsigned char v120 = 6;
signed int v119 = -2;
trace++;
switch (trace)
{
case 5: 
return 6U;
default: abort ();
}
}
}
}

signed char v11 (signed short v122, signed int v123, signed char v124, unsigned int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 3U;
unsigned char v127 = 7;
signed int v126 = 1;
trace++;
switch (trace)
{
case 10: 
return v124;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed int v131 = -4;
signed char v130 = -2;
signed short v129 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v132;
signed char v133;
unsigned int v134;
v132 = v130 - v130;
v133 = v130 + -2;
v134 = 5U - 6U;
v3 (v132, v133, v134);
}
break;
case 4: 
{
unsigned short v135;
unsigned int v136;
v135 = 0 - 0;
v136 = v23 (v135);
history[history_index++] = (int)v136;
}
break;
case 6: 
{
unsigned short v137;
unsigned char v138;
signed int v139;
v137 = 3 - 4;
v138 = 0 - 6;
v139 = v7 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
