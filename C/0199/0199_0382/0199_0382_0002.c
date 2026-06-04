#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned int, signed short);
extern unsigned short (*v2) (signed short, signed char, unsigned int, signed short);
extern signed int v3 (signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed int, unsigned short, unsigned short);
signed char v5 (unsigned int, unsigned int, signed short, signed int);
signed char (*v6) (unsigned int, unsigned int, signed short, signed int) = v5;
extern signed short v7 (signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v17 (unsigned char, unsigned short, unsigned char);
unsigned short (*v18) (unsigned char, unsigned short, unsigned char) = v17;
extern void v21 (unsigned char, signed char, signed short);
extern void (*v22) (unsigned char, signed char, signed short);
extern unsigned short v23 (unsigned short, unsigned int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned int, signed int);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
signed int v29 (signed int, unsigned short, signed char);
signed int (*v30) (signed int, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = 2;
unsigned int v106 = 4U;
unsigned char v105 = 1;

signed int v29 (signed int v108, unsigned short v109, signed char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -2;
unsigned short v112 = 3;
signed int v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v116 = 7;
unsigned int v115 = 5U;
unsigned int v114 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v117, unsigned short v118, unsigned char v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 2;
unsigned int v121 = 2U;
signed short v120 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v123, unsigned int v124, signed short v125, signed int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -1;
signed short v128 = -1;
signed char v127 = 0;
trace++;
switch (trace)
{
case 2: 
return v127;
case 4: 
{
unsigned char v130;
v130 = v15 ();
history[history_index++] = (int)v130;
}
break;
case 14: 
return v127;
default: abort ();
}
}
}
}
