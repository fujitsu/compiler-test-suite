#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (signed char, unsigned char, unsigned int);
extern signed int (*v4) (signed char, unsigned char, unsigned int);
void v5 (unsigned char);
void (*v6) (unsigned char) = v5;
extern signed int v7 (signed short, unsigned int);
extern signed int (*v8) (signed short, unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v14) (signed char, unsigned int, signed int, unsigned short);
extern signed short v15 (signed int, unsigned int, signed int);
extern signed short (*v16) (signed int, unsigned int, signed int);
extern signed int v17 (unsigned int, signed short);
extern signed int (*v18) (unsigned int, signed short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, signed char);
extern signed short (*v22) (unsigned short, signed char);
extern signed char v23 (signed int, signed int, signed short, unsigned short);
extern signed char (*v24) (signed int, signed int, signed short, unsigned short);
unsigned int v25 (unsigned int, unsigned short);
unsigned int (*v26) (unsigned int, unsigned short) = v25;
extern unsigned short v27 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned short (*v28) (unsigned short, unsigned short, unsigned int, unsigned char);
extern signed char v29 (signed int, unsigned int, unsigned short, signed char);
extern signed char (*v30) (signed int, unsigned int, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v131 = 3;
unsigned short v130 = 3;
unsigned short v129 = 4;

unsigned int v25 (unsigned int v132, unsigned short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 2;
signed int v135 = -4;
signed char v134 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed int v137;
unsigned int v138;
unsigned short v139;
signed char v140;
signed char v141;
v137 = -2 - 1;
v138 = 7U + v132;
v139 = 0 - 2;
v140 = v136 - -1;
v141 = v29 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 8: 
{
signed int v142;
unsigned int v143;
unsigned short v144;
signed char v145;
signed char v146;
v142 = 0 - 0;
v143 = 4U - v132;
v144 = v133 - 6;
v145 = v136 + v136;
v146 = v29 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 12: 
return v132;
case 15: 
return v132;
default: abort ();
}
}
}
}

void v5 (unsigned char v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 7;
signed char v149 = 2;
unsigned short v148 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed short v151;
unsigned int v152;
signed int v153;
v151 = -1 - -1;
v152 = 0U - 0U;
v153 = v7 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}
