#include <stdlib.h>
extern signed char v3 (unsigned int, unsigned int);
extern signed char (*v4) (unsigned int, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v9 (unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned short, unsigned short);
unsigned int v11 (signed char, unsigned short);
unsigned int (*v12) (signed char, unsigned short) = v11;
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (unsigned char, unsigned int, signed int, unsigned int);
signed int (*v22) (unsigned char, unsigned int, signed int, unsigned int) = v21;
signed short v23 (signed char, unsigned char, unsigned char, unsigned char);
signed short (*v24) (signed char, unsigned char, unsigned char, unsigned char) = v23;
signed char v25 (signed int, signed int, signed short);
signed char (*v26) (signed int, signed int, signed short) = v25;
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = 2;
signed int v100 = -4;
unsigned char v99 = 7;

signed char v25 (signed int v102, signed int v103, signed short v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -3;
unsigned int v106 = 5U;
signed char v105 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v108, unsigned char v109, unsigned char v110, unsigned char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 2U;
signed short v113 = 3;
unsigned short v112 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v115, unsigned int v116, signed int v117, unsigned int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 4;
signed int v120 = 0;
signed int v119 = 2;
trace++;
switch (trace)
{
case 5: 
return v120;
case 9: 
{
signed short v122;
unsigned int v123;
v122 = -1 - -3;
v123 = v27 (v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return v119;
default: abort ();
}
}
}
}

unsigned int v11 (signed char v124, unsigned short v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 3U;
signed short v127 = 2;
unsigned short v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
