#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int, signed char);
extern unsigned char (*v2) (signed char, unsigned int, signed char);
extern void v3 (signed int);
extern void (*v4) (signed int);
signed short v5 (signed int, signed int, unsigned char, signed char);
signed short (*v6) (signed int, signed int, unsigned char, signed char) = v5;
extern unsigned short v7 (unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int);
extern signed char v9 (unsigned int, signed char);
extern signed char (*v10) (unsigned int, signed char);
extern signed int v11 (unsigned int, unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char);
extern signed short v13 (signed int, unsigned char, signed short);
extern signed short (*v14) (signed int, unsigned char, signed short);
extern unsigned int v15 (unsigned short, signed char, signed char);
extern unsigned int (*v16) (unsigned short, signed char, signed char);
extern signed int v17 (unsigned char, unsigned short, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short, unsigned short);
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
extern signed char v21 (unsigned int, unsigned int, signed int);
extern signed char (*v22) (unsigned int, unsigned int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v25 (unsigned char, signed char);
unsigned short (*v26) (unsigned char, signed char) = v25;
extern signed short v27 (unsigned char, unsigned short, signed char);
extern signed short (*v28) (unsigned char, unsigned short, signed char);
extern unsigned int v29 (signed char, unsigned char, unsigned int);
extern unsigned int (*v30) (signed char, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v134 = 3;
unsigned int v133 = 0U;
unsigned short v132 = 2;

unsigned short v25 (unsigned char v135, signed char v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 2;
unsigned int v138 = 1U;
unsigned int v137 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 1;
signed short v142 = 3;
signed short v141 = -2;
trace++;
switch (trace)
{
case 5: 
return -1;
case 7: 
return 3;
case 9: 
return 1;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed short v5 (signed int v144, signed int v145, unsigned char v146, signed char v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -4;
signed int v149 = 3;
signed char v148 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed char v151;
unsigned char v152;
unsigned int v153;
unsigned int v154;
v151 = v148 + v150;
v152 = 1 - v146;
v153 = 3U + 7U;
v154 = v29 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 15: 
return -2;
default: abort ();
}
}
}
}
