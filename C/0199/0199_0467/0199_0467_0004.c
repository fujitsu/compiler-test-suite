#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, signed char);
extern unsigned short (*v2) (signed short, signed char, signed char);
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v11 (unsigned int, signed short, unsigned int, unsigned short);
extern signed int (*v12) (unsigned int, signed short, unsigned int, unsigned short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned short v19 (signed int, signed char, signed int);
unsigned short (*v20) (signed int, signed char, signed int) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
signed char v23 (unsigned short, unsigned short);
signed char (*v24) (unsigned short, unsigned short) = v23;
unsigned char v25 (unsigned char, signed char);
unsigned char (*v26) (unsigned char, signed char) = v25;
extern unsigned int v27 (unsigned char, unsigned short, signed short);
extern unsigned int (*v28) (unsigned char, unsigned short, signed short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = -4;
unsigned char v129 = 7;
signed short v128 = -3;

unsigned char v25 (unsigned char v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 2;
signed char v134 = -3;
unsigned int v133 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned short v136, unsigned short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = 0;
unsigned short v139 = 6;
unsigned short v138 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v141, signed char v142, signed int v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed int v146 = 2;
unsigned int v145 = 1U;
unsigned short v144 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed short v147;
signed char v148;
signed char v149;
unsigned short v150;
v147 = 1 - 0;
v148 = v142 + -1;
v149 = 0 + v142;
v150 = v1 (v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 7: 
return v144;
case 11: 
return v144;
case 14: 
return 5;
default: abort ();
}
}
}
}
