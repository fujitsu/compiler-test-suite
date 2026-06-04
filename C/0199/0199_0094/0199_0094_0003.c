#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed short, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned short, unsigned short);
extern signed char (*v6) (unsigned short, unsigned short);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern void v11 (signed int, unsigned short, signed short, signed char);
extern void (*v12) (signed int, unsigned short, signed short, signed char);
unsigned short v13 (signed int, unsigned char);
unsigned short (*v14) (signed int, unsigned char) = v13;
unsigned char v15 (signed int, signed char, unsigned short);
unsigned char (*v16) (signed int, signed char, unsigned short) = v15;
extern void v17 (unsigned short, signed char, unsigned short, signed int);
extern void (*v18) (unsigned short, signed char, unsigned short, signed int);
extern void v19 (signed int, signed int, signed short, signed int);
extern void (*v20) (signed int, signed int, signed short, signed int);
extern unsigned int v21 (signed char, unsigned char, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed short);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed int v25 (signed char, signed int, signed short);
extern signed int (*v26) (signed char, signed int, signed short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -4;
unsigned char v106 = 2;
signed char v105 = 0;

unsigned char v15 (signed int v108, signed char v109, unsigned short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 2;
unsigned short v112 = 2;
unsigned short v111 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v114, unsigned char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 5;
signed int v117 = 1;
signed char v116 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed int v119;
unsigned char v120;
unsigned short v121;
v119 = 0 - 0;
v120 = v115 + v115;
v121 = v13 (v119, v120);
history[history_index++] = (int)v121;
}
break;
case 6: 
return 6;
case 7: 
{
signed int v122;
unsigned char v123;
unsigned short v124;
v122 = 2 - -2;
v123 = v115 - 5;
v124 = v13 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 8: 
{
unsigned int v125;
unsigned short v126;
v125 = 3U - 5U;
v126 = v27 (v125);
history[history_index++] = (int)v126;
}
break;
case 10: 
{
signed int v127;
unsigned char v128;
unsigned short v129;
v127 = v114 - -1;
v128 = 4 + 1;
v129 = v13 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return v118;
case 12: 
return 5;
case 13: 
return v118;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 5;
signed char v132 = 2;
unsigned char v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
