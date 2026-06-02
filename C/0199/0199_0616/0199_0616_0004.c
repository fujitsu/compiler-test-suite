#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed int, unsigned int);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int);
extern signed char v5 (unsigned char, signed short, unsigned char);
extern signed char (*v6) (unsigned char, signed short, unsigned char);
static unsigned int v7 (unsigned char, unsigned char, unsigned int);
static unsigned int (*v8) (unsigned char, unsigned char, unsigned int) = v7;
signed int v9 (unsigned char, unsigned short, unsigned short);
signed int (*v10) (unsigned char, unsigned short, unsigned short) = v9;
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned short);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, unsigned short, signed short);
extern signed int v17 (unsigned int, unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed int, signed short, signed int, unsigned int);
extern unsigned short (*v20) (signed int, signed short, signed int, unsigned int);
extern unsigned short v21 (unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, signed char, signed int);
signed char v23 (signed int, unsigned int, unsigned short);
signed char (*v24) (signed int, unsigned int, unsigned short) = v23;
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern void v27 (unsigned int, signed char, unsigned char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char v29 (unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v127 = 4U;
unsigned int v126 = 4U;
signed int v125 = 2;

unsigned short v25 (void)
{
{
for (;;) {
signed char v130 = 2;
unsigned int v129 = 6U;
unsigned int v128 = 7U;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v131;
unsigned char v132;
unsigned int v133;
unsigned int v134;
v131 = 5 - 3;
v132 = 1 + 2;
v133 = v128 + 4U;
v134 = v7 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
unsigned char v135;
unsigned char v136;
unsigned int v137;
unsigned int v138;
v135 = 5 + 6;
v136 = 3 - 3;
v137 = v128 + v129;
v138 = v7 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}

signed char v23 (signed int v139, unsigned int v140, unsigned short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -3;
unsigned char v143 = 4;
unsigned char v142 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v145, unsigned short v146, unsigned short v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = -3;
unsigned short v149 = 1;
signed char v148 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (unsigned char v151, unsigned char v152, unsigned int v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 6U;
unsigned int v155 = 2U;
unsigned int v154 = 1U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v157;
signed char v158;
signed int v159;
unsigned short v160;
v157 = 3U - 6U;
v158 = -2 - 0;
v159 = -4 - 1;
v160 = v21 (v157, v158, v159);
history[history_index++] = (int)v160;
}
break;
case 5: 
{
unsigned char v161;
unsigned int v162;
signed short v163;
unsigned char v164;
v161 = v152 + v151;
v162 = v155 - 2U;
v163 = 3 + -4;
v164 = v29 (v161, v162, v163);
history[history_index++] = (int)v164;
}
break;
case 7: 
return v155;
case 9: 
{
unsigned int v165;
signed char v166;
signed int v167;
unsigned short v168;
v165 = v153 + v155;
v166 = -4 + 3;
v167 = -4 + 2;
v168 = v21 (v165, v166, v167);
history[history_index++] = (int)v168;
}
break;
case 13: 
return 5U;
default: abort ();
}
}
}
}
