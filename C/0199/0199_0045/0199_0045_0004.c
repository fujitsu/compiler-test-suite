#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned char);
extern signed int (*v4) (unsigned short, unsigned char);
extern void v5 (signed int, unsigned int, unsigned char);
extern void (*v6) (signed int, unsigned int, unsigned char);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
signed int v11 (unsigned char);
signed int (*v12) (unsigned char) = v11;
extern signed int v13 (unsigned int, unsigned int, unsigned int);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int);
signed short v15 (unsigned short, unsigned char);
signed short (*v16) (unsigned short, unsigned char) = v15;
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (signed short, signed int, signed char, unsigned short);
extern signed char (*v20) (signed short, signed int, signed char, unsigned short);
signed char v21 (unsigned char, unsigned int, signed int, unsigned short);
signed char (*v22) (unsigned char, unsigned int, signed int, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed int, signed char, signed short);
extern signed short (*v26) (signed int, signed char, signed short);
extern void v27 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed short v29 (signed short, signed int, signed int);
extern signed short (*v30) (signed short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v150 = -3;
signed short v149 = -3;
signed int v148 = -3;

signed char v21 (unsigned char v151, unsigned int v152, signed int v153, unsigned short v154)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed char v157 = 2;
signed int v156 = 2;
signed short v155 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v158;
signed int v159;
signed int v160;
signed short v161;
v158 = 2 + -3;
v159 = v156 - v156;
v160 = -3 + -1;
v161 = v29 (v158, v159, v160);
history[history_index++] = (int)v161;
}
break;
case 6: 
{
signed short v162;
signed int v163;
signed int v164;
signed short v165;
v162 = v155 + v155;
v163 = v153 - v153;
v164 = -2 - 1;
v165 = v29 (v162, v163, v164);
history[history_index++] = (int)v165;
}
break;
case 9: 
return v157;
case 11: 
return 2;
case 14: 
return -3;
case 17: 
return -3;
default: abort ();
}
}
}
}

signed short v15 (unsigned short v166, unsigned char v167)
{
history[history_index++] = (int)v166;
history[history_index++] = (int)v167;
{
for (;;) {
unsigned char v170 = 6;
signed int v169 = -1;
signed int v168 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v171)
{
history[history_index++] = (int)v171;
{
for (;;) {
unsigned int v174 = 6U;
unsigned int v173 = 3U;
signed short v172 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
