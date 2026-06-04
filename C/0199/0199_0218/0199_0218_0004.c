#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short, signed char);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
signed int v11 (unsigned char, unsigned int, unsigned char);
signed int (*v12) (unsigned char, unsigned int, unsigned char) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
signed char v15 (signed short, signed int);
signed char (*v16) (signed short, signed int) = v15;
signed int v17 (signed short, unsigned char);
signed int (*v18) (signed short, unsigned char) = v17;
unsigned short v19 (signed short, signed short);
unsigned short (*v20) (signed short, signed short) = v19;
extern void v23 (signed char, signed char, unsigned char);
extern void (*v24) (signed char, signed char, unsigned char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned char v27 (signed char, signed int);
extern unsigned char (*v28) (signed char, signed int);
extern signed char v29 (unsigned char, unsigned int, unsigned short);
extern signed char (*v30) (unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v106 = 3;
signed int v105 = 3;
signed int v104 = 0;

unsigned short v19 (signed short v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -1;
unsigned short v110 = 4;
signed int v109 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v112;
signed int v113;
v112 = 3U + 3U;
v113 = v111 + 2;
v25 (v112, v113);
}
break;
case 8: 
{
unsigned int v114;
signed int v115;
v114 = 5U + 0U;
v115 = v111 - v109;
v25 (v114, v115);
}
break;
case 10: 
{
unsigned int v116;
signed int v117;
v116 = 4U + 4U;
v117 = v109 - 0;
v25 (v116, v117);
}
break;
case 12: 
return v110;
default: abort ();
}
}
}
}

signed int v17 (signed short v118, unsigned char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 3;
signed int v121 = -4;
signed int v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v123, signed int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 2;
unsigned short v126 = 6;
unsigned short v125 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v128, unsigned int v129, unsigned char v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 2;
signed char v132 = 0;
signed char v131 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed short v136 = -2;
unsigned int v135 = 0U;
signed short v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
