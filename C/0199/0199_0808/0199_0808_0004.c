#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (signed int, signed short, signed short, unsigned char);
extern signed short (*v10) (signed int, signed short, signed short, unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed int, signed short, unsigned short);
extern signed char (*v16) (signed int, signed short, unsigned short);
unsigned char v17 (unsigned char, signed short, unsigned int, unsigned char);
unsigned char (*v18) (unsigned char, signed short, unsigned int, unsigned char) = v17;
extern signed int v19 (signed int, signed int, unsigned short, unsigned char);
extern signed int (*v20) (signed int, signed int, unsigned short, unsigned char);
extern void v21 (signed char, signed short, signed char, unsigned short);
extern void (*v22) (signed char, signed short, signed char, unsigned short);
extern signed int v23 (signed char, signed char);
extern signed int (*v24) (signed char, signed char);
signed char v25 (signed short, unsigned char);
signed char (*v26) (signed short, unsigned char) = v25;
extern unsigned char v27 (signed short, signed short, unsigned int, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned int, unsigned short);
signed short v29 (unsigned char, signed char);
signed short (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 1;
signed char v123 = 0;
unsigned short v122 = 1;

signed short v29 (unsigned char v125, signed char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 1U;
signed char v128 = 1;
signed int v127 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v130;
signed short v131;
signed short v132;
unsigned char v133;
signed short v134;
v130 = v127 + -1;
v131 = -4 + 1;
v132 = 0 - 2;
v133 = 3 + v125;
v134 = v9 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 5: 
return 0;
case 7: 
{
signed int v135;
signed short v136;
signed short v137;
unsigned char v138;
signed short v139;
v135 = 0 - -3;
v136 = 3 + -1;
v137 = -1 + -4;
v138 = v125 + 4;
v139 = v9 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 9: 
{
signed int v140;
signed short v141;
signed short v142;
unsigned char v143;
signed short v144;
v140 = -4 - v127;
v141 = -3 + 1;
v142 = 0 + -4;
v143 = 4 - 3;
v144 = v9 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed char v25 (signed short v145, unsigned char v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned int v149 = 0U;
unsigned char v148 = 0;
signed char v147 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v150, signed short v151, unsigned int v152, unsigned char v153)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 3U;
signed char v155 = 1;
unsigned int v154 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
