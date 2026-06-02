#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern void v7 (signed short, unsigned char);
extern void (*v8) (signed short, unsigned char);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned short v11 (signed short, unsigned char, unsigned short);
extern unsigned short (*v12) (signed short, unsigned char, unsigned short);
unsigned short v13 (signed int, signed int);
unsigned short (*v14) (signed int, signed int) = v13;
extern signed short v15 (signed char, unsigned int, unsigned int);
extern signed short (*v16) (signed char, unsigned int, unsigned int);
extern signed char v17 (signed short, unsigned short);
extern signed char (*v18) (signed short, unsigned short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern void v21 (signed int, signed char, signed int, unsigned int);
extern void (*v22) (signed int, signed char, signed int, unsigned int);
extern signed char v23 (void);
extern signed char (*v24) (void);
unsigned int v25 (signed int, signed char, signed char, signed short);
unsigned int (*v26) (signed int, signed char, signed char, signed short) = v25;
unsigned char v27 (unsigned int);
unsigned char (*v28) (unsigned int) = v27;
extern void v29 (unsigned char, signed short, signed int, signed short);
extern void (*v30) (unsigned char, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v127 = 1;
unsigned char v126 = 2;
unsigned int v125 = 5U;

unsigned char v27 (unsigned int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 3U;
signed char v130 = -4;
signed short v129 = 0;
trace++;
switch (trace)
{
case 9: 
return 5;
default: abort ();
}
}
}
}

unsigned int v25 (signed int v132, signed char v133, signed char v134, signed short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 2;
signed short v137 = 2;
unsigned char v136 = 6;
trace++;
switch (trace)
{
case 7: 
return 1U;
case 11: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v13 (signed int v139, signed int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 1;
unsigned char v142 = 6;
unsigned short v141 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed char v144;
unsigned int v145;
unsigned int v146;
signed short v147;
v144 = v143 + 0;
v145 = 4U - 1U;
v146 = 2U - 0U;
v147 = v15 (v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 5: 
{
signed char v148;
unsigned int v149;
unsigned int v150;
signed short v151;
v148 = v143 - v143;
v149 = 2U + 6U;
v150 = 0U + 1U;
v151 = v15 (v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 13: 
return v141;
default: abort ();
}
}
}
}
