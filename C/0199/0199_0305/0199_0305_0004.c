#include <stdlib.h>
signed int v1 (signed int, signed int, unsigned char);
signed int (*v2) (signed int, signed int, unsigned char) = v1;
extern unsigned char v3 (unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned short, unsigned int);
extern void v5 (unsigned short, unsigned char, signed int);
extern void (*v6) (unsigned short, unsigned char, signed int);
extern unsigned char v7 (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern unsigned char v11 (signed short, signed short);
extern unsigned char (*v12) (signed short, signed short);
extern signed int v13 (signed int, signed char, unsigned short);
extern signed int (*v14) (signed int, signed char, unsigned short);
extern signed char v15 (unsigned int, unsigned short, signed char);
extern signed char (*v16) (unsigned int, unsigned short, signed char);
extern unsigned short v17 (unsigned short, unsigned int, signed short);
extern unsigned short (*v18) (unsigned short, unsigned int, signed short);
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern void v27 (signed char, unsigned char, unsigned short, unsigned char);
extern void (*v28) (signed char, unsigned char, unsigned short, unsigned char);
signed int v29 (signed int, signed short, unsigned char);
signed int (*v30) (signed int, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v131 = 5U;
signed int v130 = 2;
signed int v129 = -1;

signed int v29 (signed int v132, signed short v133, unsigned char v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 2;
unsigned int v136 = 5U;
unsigned short v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed int v138, signed int v139, unsigned char v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 1;
signed short v142 = -4;
unsigned char v141 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v144;
unsigned int v145;
unsigned char v146;
unsigned char v147;
v144 = 7 - 4;
v145 = 1U + 1U;
v146 = v141 + v140;
v147 = v19 (v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 2: 
{
signed short v148;
signed short v149;
unsigned char v150;
v148 = v142 + v142;
v149 = 1 + 2;
v150 = v11 (v148, v149);
history[history_index++] = (int)v150;
}
break;
case 6: 
{
unsigned char v151;
unsigned char v152;
unsigned int v153;
unsigned int v154;
unsigned char v155;
v151 = v141 + v141;
v152 = 3 + 1;
v153 = 2U + 7U;
v154 = 6U - 2U;
v155 = v7 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
