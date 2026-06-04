#include <stdlib.h>
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned char, unsigned char, signed char);
extern unsigned int (*v10) (unsigned char, unsigned char, signed char);
extern unsigned char v11 (signed short, unsigned char);
extern unsigned char (*v12) (signed short, unsigned char);
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
unsigned int v17 (unsigned int, unsigned short);
unsigned int (*v18) (unsigned int, unsigned short) = v17;
extern void v19 (unsigned short, signed char, unsigned short);
extern void (*v20) (unsigned short, signed char, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (unsigned short, unsigned short, signed int, signed char);
extern unsigned short (*v26) (unsigned short, unsigned short, signed int, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned char v29 (signed char, signed int, unsigned char);
unsigned char (*v30) (signed char, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v111 = -2;
signed int v110 = 0;
unsigned int v109 = 5U;

unsigned char v29 (signed char v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 3;
unsigned int v116 = 5U;
unsigned char v115 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 7;
unsigned short v121 = 4;
unsigned int v120 = 4U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v123;
signed char v124;
unsigned short v125;
v123 = v121 - v121;
v124 = 0 + -3;
v125 = v121 - 4;
v19 (v123, v124, v125);
}
break;
case 3: 
{
unsigned short v126;
signed char v127;
unsigned short v128;
v126 = v119 + v119;
v127 = -4 - 2;
v128 = 2 - 1;
v19 (v126, v127, v128);
}
break;
case 5: 
{
unsigned short v129;
signed char v130;
unsigned short v131;
v129 = v119 + 2;
v130 = -2 + -4;
v131 = v121 + 0;
v19 (v129, v130, v131);
}
break;
case 7: 
{
unsigned short v132;
signed char v133;
unsigned short v134;
v132 = v119 + 2;
v133 = -1 + -3;
v134 = v121 - v121;
v19 (v132, v133, v134);
}
break;
case 9: 
{
unsigned short v135;
signed char v136;
unsigned short v137;
v135 = v119 - v119;
v136 = 2 + 2;
v137 = v121 - 4;
v19 (v135, v136, v137);
}
break;
case 11: 
return v120;
default: abort ();
}
}
}
}
