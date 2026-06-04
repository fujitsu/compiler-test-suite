#include <stdlib.h>
extern signed int v1 (signed int, signed int, unsigned char);
extern signed int (*v2) (signed int, signed int, unsigned char);
unsigned char v3 (unsigned short, unsigned int);
unsigned char (*v4) (unsigned short, unsigned int) = v3;
extern void v5 (unsigned short, unsigned char, signed int);
extern void (*v6) (unsigned short, unsigned char, signed int);
unsigned char v7 (unsigned char, unsigned char, unsigned int, unsigned int);
unsigned char (*v8) (unsigned char, unsigned char, unsigned int, unsigned int) = v7;
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern unsigned char v11 (signed short, signed short);
extern unsigned char (*v12) (signed short, signed short);
extern signed int v13 (signed int, signed char, unsigned short);
extern signed int (*v14) (signed int, signed char, unsigned short);
extern signed char v15 (unsigned int, unsigned short, signed char);
extern signed char (*v16) (unsigned int, unsigned short, signed char);
extern unsigned short v17 (unsigned short, unsigned int, signed short);
extern unsigned short (*v18) (unsigned short, unsigned int, signed short);
unsigned char v19 (unsigned short, unsigned int, unsigned char);
unsigned char (*v20) (unsigned short, unsigned int, unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
signed short v25 (signed char, signed short);
signed short (*v26) (signed char, signed short) = v25;
extern void v27 (signed char, unsigned char, unsigned short, unsigned char);
extern void (*v28) (signed char, unsigned char, unsigned short, unsigned char);
extern signed int v29 (signed int, signed short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = -3;
unsigned char v93 = 0;
unsigned char v92 = 5;

signed short v25 (signed char v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -4;
unsigned int v98 = 3U;
signed short v97 = -1;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed short v102 = 0;
unsigned short v101 = 1;
unsigned short v100 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v103, unsigned int v104, unsigned char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 4U;
signed short v107 = 1;
unsigned short v106 = 0;
trace++;
switch (trace)
{
case 1: 
return v105;
case 8: 
return 6;
case 10: 
return 6;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v109, unsigned char v110, unsigned int v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -2;
unsigned int v114 = 4U;
unsigned char v113 = 7;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v116;
unsigned int v117;
unsigned char v118;
unsigned char v119;
v116 = 0 + 4;
v117 = v112 + v111;
v118 = v113 - v109;
v119 = v19 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 9: 
{
unsigned short v120;
unsigned int v121;
unsigned char v122;
unsigned char v123;
v120 = 0 - 5;
v121 = v114 + 5U;
v122 = v113 - v110;
v123 = v19 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return v113;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v124, unsigned int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -1;
unsigned char v127 = 1;
unsigned short v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
