#include <stdlib.h>
signed char v1 (unsigned short, signed short);
signed char (*v2) (unsigned short, signed short) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
extern unsigned char v13 (unsigned char, signed short);
extern unsigned char (*v14) (unsigned char, signed short);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern unsigned int v17 (signed short, unsigned int, signed int);
extern unsigned int (*v18) (signed short, unsigned int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, signed char);
extern signed char (*v22) (signed int, signed char);
extern unsigned int v23 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v24) (unsigned char, signed short, signed char, unsigned int);
extern signed char v25 (signed short, signed short, unsigned int, signed short);
extern signed char (*v26) (signed short, signed short, unsigned int, signed short);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern signed char v29 (unsigned int, signed short, unsigned int);
extern signed char (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = -1;
signed char v112 = 2;
signed int v111 = 1;

signed char v11 (signed int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = 3;
unsigned short v116 = 0;
signed char v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v118, signed short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -3;
signed int v121 = -2;
signed short v120 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v123;
signed short v124;
signed char v125;
unsigned int v126;
unsigned int v127;
v123 = 7 + 7;
v124 = v119 - v119;
v125 = 3 - -2;
v126 = 4U - 5U;
v127 = v23 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 2: 
{
signed short v128;
signed short v129;
unsigned int v130;
signed short v131;
signed char v132;
v128 = v122 + v122;
v129 = 2 - v122;
v130 = 6U - 7U;
v131 = v120 - 1;
v132 = v25 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 4: 
{
unsigned char v133;
unsigned char v134;
v133 = 5 - 2;
v134 = v3 (v133);
history[history_index++] = (int)v134;
}
break;
case 6: 
{
unsigned char v135;
v135 = v5 ();
history[history_index++] = (int)v135;
}
break;
case 8: 
{
signed char v136;
signed short v137;
v136 = -1 + 0;
v137 = v9 (v136);
history[history_index++] = (int)v137;
}
break;
case 10: 
{
unsigned char v138;
v138 = v5 ();
history[history_index++] = (int)v138;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
