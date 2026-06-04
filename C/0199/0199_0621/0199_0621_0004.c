#include <stdlib.h>
signed char v1 (signed int, signed short);
signed char (*v2) (signed int, signed short) = v1;
unsigned int v3 (unsigned char, signed short);
unsigned int (*v4) (unsigned char, signed short) = v3;
extern signed short v5 (unsigned char, unsigned short);
extern signed short (*v6) (unsigned char, unsigned short);
extern signed short v7 (unsigned int, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, unsigned char);
extern unsigned char v9 (unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned short, unsigned short);
extern signed short v11 (signed int, signed int, unsigned char);
extern signed short (*v12) (signed int, signed int, unsigned char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern unsigned short v15 (unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
extern signed char v23 (unsigned char, signed short, signed char, signed short);
extern signed char (*v24) (unsigned char, signed short, signed char, signed short);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned char v29 (signed short, unsigned char, signed int);
extern unsigned char (*v30) (signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v134 = 5;
signed char v133 = -1;
signed int v132 = -4;

unsigned int v3 (unsigned char v135, signed short v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 0U;
unsigned short v138 = 2;
unsigned short v137 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 5;
unsigned char v143 = 7;
signed short v142 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v145;
signed char v146;
signed short v147;
v145 = -3 - -3;
v146 = -3 - -4;
v147 = v19 (v145, v146);
history[history_index++] = (int)v147;
}
break;
case 2: 
{
signed int v148;
signed char v149;
v148 = 2 - v140;
v149 = v17 (v148);
history[history_index++] = (int)v149;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
