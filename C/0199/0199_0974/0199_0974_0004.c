#include <stdlib.h>
extern signed char v1 (signed char, unsigned char, unsigned int);
extern signed char (*v2) (signed char, unsigned char, unsigned int);
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
extern unsigned int v5 (signed short, unsigned short);
extern unsigned int (*v6) (signed short, unsigned short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
unsigned short v11 (unsigned int, signed short);
unsigned short (*v12) (unsigned int, signed short) = v11;
extern signed int v13 (signed short, unsigned int, signed short, unsigned char);
extern signed int (*v14) (signed short, unsigned int, signed short, unsigned char);
extern unsigned int v15 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned short, unsigned int, unsigned int);
static unsigned short v17 (unsigned short, unsigned int);
static unsigned short (*v18) (unsigned short, unsigned int) = v17;
extern unsigned int v19 (unsigned char, unsigned int);
extern unsigned int (*v20) (unsigned char, unsigned int);
extern signed char v21 (unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, unsigned char);
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
extern signed short v25 (signed short, unsigned char, signed int, signed char);
extern signed short (*v26) (signed short, unsigned char, signed int, signed char);
unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned short);
unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 4;
signed short v117 = 2;
signed short v116 = 2;

unsigned int v27 (unsigned short v119, unsigned short v120, unsigned short v121, unsigned short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -3;
unsigned int v124 = 2U;
signed int v123 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v126;
unsigned int v127;
unsigned short v128;
v126 = v122 - v122;
v127 = 2U + v124;
v128 = v17 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 6: 
{
unsigned short v129;
unsigned int v130;
unsigned short v131;
v129 = v119 - v122;
v130 = 7U + v124;
v131 = v17 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 8: 
return 7U;
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned short v132, unsigned int v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 3;
unsigned int v135 = 7U;
unsigned int v134 = 5U;
trace++;
switch (trace)
{
case 5: 
return v136;
case 7: 
return v132;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 5U;
unsigned char v140 = 1;
signed int v139 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed int v144 = 2;
unsigned char v143 = 1;
signed char v142 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
