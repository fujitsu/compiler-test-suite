#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned char, signed char);
extern unsigned int (*v2) (unsigned int, unsigned char, signed char);
signed int v3 (unsigned short, signed int, signed short, unsigned short);
signed int (*v4) (unsigned short, signed int, signed short, unsigned short) = v3;
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (unsigned short, signed int, unsigned char, unsigned short);
extern signed int (*v8) (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char v9 (signed char, unsigned short);
extern unsigned char (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern signed int v15 (unsigned char, signed char, signed short);
extern signed int (*v16) (unsigned char, signed char, signed short);
signed char v17 (signed short, unsigned int, signed char);
signed char (*v18) (signed short, unsigned int, signed char) = v17;
extern void v19 (signed int, unsigned int, signed short);
extern void (*v20) (signed int, unsigned int, signed short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern void v25 (signed int, signed int);
extern void (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern unsigned short v29 (unsigned short, signed char, unsigned short);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v138 = -4;
signed short v137 = 3;
signed int v136 = 3;

unsigned int v23 (void)
{
{
for (;;) {
signed char v141 = 1;
unsigned short v140 = 1;
signed short v139 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed short v142, unsigned int v143, signed char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned short v147 = 1;
signed char v146 = 2;
unsigned char v145 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v148;
unsigned char v149;
signed char v150;
unsigned int v151;
v148 = v143 + v143;
v149 = 1 - 5;
v150 = 3 + v144;
v151 = v1 (v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 7: 
{
unsigned int v152;
unsigned short v153;
signed int v154;
unsigned short v155;
signed short v156;
v152 = v143 - 3U;
v153 = v147 + v147;
v154 = 1 - -3;
v155 = 4 - 2;
v156 = v27 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 9: 
{
unsigned int v157;
unsigned char v158;
signed char v159;
unsigned int v160;
v157 = 6U - 7U;
v158 = 0 - 1;
v159 = v144 + -3;
v160 = v1 (v157, v158, v159);
history[history_index++] = (int)v160;
}
break;
case 13: 
return v146;
case 15: 
return v146;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v161, signed int v162, signed short v163, unsigned short v164)
{
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
{
for (;;) {
unsigned short v167 = 7;
unsigned short v166 = 5;
unsigned short v165 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
