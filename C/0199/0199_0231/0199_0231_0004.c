#include <stdlib.h>
signed char v1 (signed char, signed int);
signed char (*v2) (signed char, signed int) = v1;
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (signed short, unsigned int, signed short, signed short);
extern signed char (*v8) (signed short, unsigned int, signed short, signed short);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
signed short v15 (unsigned char, signed int, unsigned int);
signed short (*v16) (unsigned char, signed int, unsigned int) = v15;
extern signed int v17 (signed char, signed short);
extern signed int (*v18) (signed char, signed short);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed short, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short, signed int);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v110 = 3U;
signed char v109 = 0;
signed int v108 = 3;

signed int v29 (void)
{
{
for (;;) {
unsigned int v113 = 6U;
signed char v112 = -3;
unsigned short v111 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v114, signed int v115, unsigned int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 1;
signed char v118 = -3;
signed char v117 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v120, signed int v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 6;
unsigned short v123 = 6;
unsigned int v122 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v125;
unsigned short v126;
unsigned short v127;
signed char v128;
unsigned char v129;
v125 = v124 - 3;
v126 = 1 + v123;
v127 = v123 + v123;
v128 = -1 + -4;
v129 = v25 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
return v120;
case 3: 
{
signed int v130;
unsigned int v131;
unsigned int v132;
unsigned short v133;
v130 = v121 - 0;
v131 = v122 + v122;
v132 = 7U + 2U;
v133 = v27 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 5: 
{
signed int v134;
unsigned int v135;
unsigned int v136;
unsigned short v137;
v134 = v121 + v121;
v135 = v122 - 7U;
v136 = 1U - 1U;
v137 = v27 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 7: 
{
unsigned short v138;
v138 = v5 ();
history[history_index++] = (int)v138;
}
break;
case 11: 
return v120;
default: abort ();
}
}
}
}
