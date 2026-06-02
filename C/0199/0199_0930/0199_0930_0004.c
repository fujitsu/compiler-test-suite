#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed int v7 (unsigned short, signed short, unsigned short);
extern signed int (*v8) (unsigned short, signed short, unsigned short);
extern signed int v9 (signed int, signed short, signed int);
extern signed int (*v10) (signed int, signed short, signed int);
unsigned short v11 (unsigned char, unsigned short);
unsigned short (*v12) (unsigned char, unsigned short) = v11;
extern signed char v13 (unsigned int, signed int, unsigned char, signed int);
extern signed char (*v14) (unsigned int, signed int, unsigned char, signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
signed char v17 (unsigned int, signed short, unsigned char, unsigned short);
signed char (*v18) (unsigned int, signed short, unsigned char, unsigned short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed short v21 (unsigned short, signed int, signed char);
signed short (*v22) (unsigned short, signed int, signed char) = v21;
unsigned short v23 (unsigned int, unsigned int, unsigned short, unsigned short);
unsigned short (*v24) (unsigned int, unsigned int, unsigned short, unsigned short) = v23;
extern void v25 (signed int, unsigned char, signed short, unsigned short);
extern void (*v26) (signed int, unsigned char, signed short, unsigned short);
unsigned char v29 (signed int, unsigned short, signed char, signed short);
unsigned char (*v30) (signed int, unsigned short, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v137 = 3;
signed int v136 = -3;
unsigned char v135 = 2;

unsigned char v29 (signed int v138, unsigned short v139, signed char v140, signed short v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = -3;
unsigned int v143 = 1U;
unsigned int v142 = 5U;
trace++;
switch (trace)
{
case 3: 
{
signed int v145;
signed short v146;
signed int v147;
signed int v148;
v145 = v138 + -4;
v146 = v141 - v141;
v147 = -3 - -1;
v148 = v9 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v149, unsigned int v150, unsigned short v151, unsigned short v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned int v155 = 5U;
unsigned char v154 = 3;
signed char v153 = -4;
trace++;
switch (trace)
{
case 7: 
return 4;
case 9: 
return 0;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed short v21 (unsigned short v156, signed int v157, signed char v158)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
signed char v161 = -3;
signed short v160 = 3;
unsigned char v159 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v162, signed short v163, unsigned char v164, unsigned short v165)
{
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
history[history_index++] = (int)v165;
{
for (;;) {
signed int v168 = 0;
signed char v167 = 2;
unsigned short v166 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v169, unsigned short v170)
{
history[history_index++] = (int)v169;
history[history_index++] = (int)v170;
{
for (;;) {
signed short v173 = -4;
unsigned char v172 = 1;
signed char v171 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
