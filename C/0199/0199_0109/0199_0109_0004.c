#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
extern void v3 (unsigned short, unsigned short);
extern void (*v4) (unsigned short, unsigned short);
extern void v5 (signed char, unsigned short);
extern void (*v6) (signed char, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned int v11 (unsigned short, unsigned char, signed short);
unsigned int (*v12) (unsigned short, unsigned char, signed short) = v11;
extern unsigned char v13 (signed char, signed int, unsigned short);
extern unsigned char (*v14) (signed char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, signed short);
extern unsigned char (*v16) (signed int, signed short, signed short);
signed int v17 (unsigned int, unsigned char, signed int, signed int);
signed int (*v18) (unsigned int, unsigned char, signed int, signed int) = v17;
extern unsigned int v19 (signed int, unsigned char, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
signed char v25 (signed char, signed short, signed char);
signed char (*v26) (signed char, signed short, signed char) = v25;
static unsigned short v27 (signed short);
static unsigned short (*v28) (signed short) = v27;
extern signed short v29 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = 0;
signed char v106 = -4;
unsigned short v105 = 1;

static unsigned short v27 (signed short v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -2;
unsigned char v110 = 0;
unsigned int v109 = 3U;
trace++;
switch (trace)
{
case 8: 
return 4;
case 10: 
return 2;
default: abort ();
}
}
}
}

signed char v25 (signed char v112, signed short v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 4;
signed short v116 = 3;
unsigned char v115 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed char v120 = 0;
signed char v119 = 1;
unsigned char v118 = 1;
trace++;
switch (trace)
{
case 5: 
return 2U;
case 7: 
{
signed short v121;
unsigned short v122;
v121 = -4 - 1;
v122 = v27 (v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
{
signed short v123;
unsigned short v124;
v123 = 1 + 3;
v124 = v27 (v123);
history[history_index++] = (int)v124;
}
break;
case 11: 
return 6U;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v125, unsigned char v126, signed int v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -4;
signed char v130 = -2;
unsigned int v129 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v132, unsigned char v133, signed short v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 0;
unsigned char v136 = 1;
signed int v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
