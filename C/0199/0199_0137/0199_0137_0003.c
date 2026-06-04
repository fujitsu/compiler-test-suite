#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned int, unsigned char);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
signed int v9 (signed char);
signed int (*v10) (signed char) = v9;
extern unsigned short v11 (signed int, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned short, signed char);
extern signed short v13 (unsigned char, signed short, signed char, signed short);
extern signed short (*v14) (unsigned char, signed short, signed char, signed short);
extern signed short v15 (unsigned short, signed int);
extern signed short (*v16) (unsigned short, signed int);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
signed char v19 (signed int, signed int, signed char, signed int);
signed char (*v20) (signed int, signed int, signed char, signed int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed char v23 (signed short, unsigned int, signed char, unsigned short);
extern signed char (*v24) (signed short, unsigned int, signed char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned char, signed char);
extern unsigned short (*v26) (unsigned int, unsigned char, signed char);
void v27 (signed int, unsigned short, signed char);
void (*v28) (signed int, unsigned short, signed char) = v27;
extern unsigned int v29 (unsigned short, signed char, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v112 = 3;
signed int v111 = 1;
signed char v110 = 2;

void v27 (signed int v113, unsigned short v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 7U;
signed short v117 = -4;
signed char v116 = -1;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed char v19 (signed int v119, signed int v120, signed char v121, signed int v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 1;
unsigned short v124 = 2;
unsigned short v123 = 0;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
{
unsigned short v126;
signed char v127;
signed char v128;
signed int v129;
unsigned int v130;
v126 = v123 - v125;
v127 = v121 - 3;
v128 = v121 - v121;
v129 = 1 - 3;
v130 = v29 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 9: 
{
unsigned short v131;
signed char v132;
signed char v133;
signed int v134;
unsigned int v135;
v131 = v125 - v124;
v132 = -2 + v121;
v133 = 0 - -1;
v134 = v122 + v122;
v135 = v29 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

signed int v9 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 3;
signed char v138 = -2;
signed int v137 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed short v140;
unsigned int v141;
signed char v142;
unsigned short v143;
signed char v144;
v140 = v139 + v139;
v141 = 0U + 6U;
v142 = v138 - v138;
v143 = 2 - 4;
v144 = v23 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}
