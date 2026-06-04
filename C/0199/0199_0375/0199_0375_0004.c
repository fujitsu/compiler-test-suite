#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, signed short, unsigned char, unsigned short);
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
extern signed int v5 (signed short, unsigned short);
extern signed int (*v6) (signed short, unsigned short);
extern signed char v7 (unsigned char, signed short);
extern signed char (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
unsigned int v19 (signed int, unsigned char);
unsigned int (*v20) (signed int, unsigned char) = v19;
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
signed int v23 (signed char, unsigned int, unsigned short);
signed int (*v24) (signed char, unsigned int, unsigned short) = v23;
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
extern signed char v29 (unsigned int, unsigned int, unsigned short, signed int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v135 = -2;
signed char v134 = -1;
unsigned short v133 = 4;

signed int v23 (signed char v136, unsigned int v137, unsigned short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = 3;
unsigned short v140 = 6;
signed int v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v142, unsigned char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed int v146 = -3;
unsigned char v145 = 2;
signed short v144 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v147;
unsigned int v148;
unsigned short v149;
v147 = 4 + 0;
v148 = 7U + 2U;
v149 = v25 (v147, v148);
history[history_index++] = (int)v149;
}
break;
case 5: 
return 3U;
case 7: 
{
unsigned int v150;
unsigned int v151;
unsigned short v152;
signed int v153;
signed char v154;
v150 = 6U - 5U;
v151 = 1U - 7U;
v152 = 1 - 3;
v153 = v142 + v142;
v154 = v29 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 9: 
{
unsigned int v155;
unsigned int v156;
unsigned short v157;
signed int v158;
signed char v159;
v155 = 6U - 6U;
v156 = 7U + 5U;
v157 = 4 + 4;
v158 = -1 + 2;
v159 = v29 (v155, v156, v157, v158);
history[history_index++] = (int)v159;
}
break;
case 13: 
return 5U;
default: abort ();
}
}
}
}
