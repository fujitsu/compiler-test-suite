#include <stdlib.h>
unsigned char v1 (signed char, unsigned char, signed short);
unsigned char (*v2) (signed char, unsigned char, signed short) = v1;
extern signed int v3 (signed char, signed short, unsigned char);
extern signed int (*v4) (signed char, signed short, unsigned char);
extern signed short v7 (unsigned int, signed char);
extern signed short (*v8) (unsigned int, signed char);
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v13 (signed int, unsigned int);
extern signed int (*v14) (signed int, unsigned int);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
extern unsigned int v17 (signed int, signed int);
extern unsigned int (*v18) (signed int, signed int);
extern signed short v19 (unsigned char, unsigned int);
extern signed short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned char, signed int);
extern signed short (*v22) (signed short, unsigned char, signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned short, unsigned short, unsigned char, signed short);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v135 = 2;
unsigned int v134 = 2U;
unsigned int v133 = 0U;

signed char v29 (void)
{
{
for (;;) {
signed short v138 = -1;
unsigned int v137 = 1U;
unsigned char v136 = 3;
trace++;
switch (trace)
{
case 8: 
return -3;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v139, unsigned char v140, signed short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 0;
signed int v143 = -4;
signed int v142 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v145;
unsigned char v146;
signed char v147;
v145 = 3 + 6;
v146 = 2 - v140;
v147 = v9 (v145, v146);
history[history_index++] = (int)v147;
}
break;
case 2: 
{
unsigned short v148;
unsigned char v149;
signed char v150;
v148 = 2 + 6;
v149 = 5 + 1;
v150 = v9 (v148, v149);
history[history_index++] = (int)v150;
}
break;
case 4: 
{
unsigned int v151;
signed short v152;
signed short v153;
v151 = 2U - 5U;
v152 = v141 - -1;
v153 = v23 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 16: 
return v144;
default: abort ();
}
}
}
}
