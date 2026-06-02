#include <stdlib.h>
signed int v1 (unsigned short, unsigned char, signed char, signed char);
signed int (*v2) (unsigned short, unsigned char, signed char, signed char) = v1;
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed char v5 (signed int, unsigned short);
extern signed char (*v6) (signed int, unsigned short);
extern signed char v7 (unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
signed short v11 (unsigned short, unsigned char, unsigned int, unsigned int);
signed short (*v12) (unsigned short, unsigned char, unsigned int, unsigned int) = v11;
signed int v13 (signed char, signed int, unsigned short, signed char);
signed int (*v14) (signed char, signed int, unsigned short, signed char) = v13;
extern signed int v15 (unsigned char, signed short);
extern signed int (*v16) (unsigned char, signed short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
void v23 (unsigned int, signed short, signed char, unsigned char);
void (*v24) (unsigned int, signed short, signed char, unsigned char) = v23;
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern unsigned char v27 (signed char, unsigned short, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned int);
extern signed char v29 (signed char, signed int);
extern signed char (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v108 = 0;
signed short v107 = 2;
unsigned char v106 = 4;

void v23 (unsigned int v109, signed short v110, signed char v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed int v114 = -2;
unsigned char v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
signed int v118 = 2;
unsigned char v117 = 0;
unsigned char v116 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 6;
unsigned short v121 = 5;
unsigned short v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v123, signed int v124, unsigned short v125, signed char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 2;
unsigned int v128 = 6U;
unsigned char v127 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v130, unsigned char v131, unsigned int v132, unsigned int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 2;
signed char v135 = 3;
signed char v134 = 0;
trace++;
switch (trace)
{
case 5: 
return 1;
case 8: 
return -1;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed int v1 (unsigned short v137, unsigned char v138, signed char v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 3;
signed char v142 = 3;
signed int v141 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v144;
signed short v145;
v144 = 0U + 6U;
v145 = v9 (v144);
history[history_index++] = (int)v145;
}
break;
case 4: 
{
unsigned short v146;
unsigned char v147;
unsigned int v148;
unsigned int v149;
signed short v150;
v146 = 2 + 4;
v147 = v138 - 7;
v148 = 6U - 7U;
v149 = 6U - 1U;
v150 = v11 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 6: 
{
unsigned int v151;
unsigned short v152;
unsigned int v153;
signed char v154;
v151 = 2U - 0U;
v152 = 2 + v137;
v153 = 6U + 3U;
v154 = v7 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
