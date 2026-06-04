#include <stdlib.h>
extern void v1 (signed int, signed short);
extern void (*v2) (signed int, signed short);
signed int v3 (signed int, unsigned char, unsigned short);
signed int (*v4) (signed int, unsigned char, unsigned short) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
unsigned int v11 (signed short, unsigned char);
unsigned int (*v12) (signed short, unsigned char) = v11;
extern unsigned char v13 (signed char, signed short, signed char);
extern unsigned char (*v14) (signed char, signed short, signed char);
extern signed char v15 (unsigned int, signed int, signed int, signed int);
extern signed char (*v16) (unsigned int, signed int, signed int, signed int);
signed char v17 (signed int, signed short, unsigned short);
signed char (*v18) (signed int, signed short, unsigned short) = v17;
extern unsigned int v19 (unsigned short, signed char);
extern unsigned int (*v20) (unsigned short, signed char);
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
extern unsigned char v23 (signed int, unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v25 (unsigned char, signed short, signed int, unsigned int);
extern unsigned short (*v26) (unsigned char, signed short, signed int, unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = -4;
unsigned int v125 = 6U;
signed char v124 = 3;

signed char v17 (signed int v127, signed short v128, unsigned short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -4;
signed int v131 = -2;
signed int v130 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v133;
signed char v134;
unsigned int v135;
v133 = 7 + v129;
v134 = -1 - -1;
v135 = v19 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 9: 
{
unsigned short v136;
signed char v137;
unsigned int v138;
v136 = 6 - 7;
v137 = -4 + -2;
v138 = v19 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 11: 
return -3;
case 13: 
return 3;
case 15: 
return 0;
default: abort ();
}
}
}
}

unsigned int v11 (signed short v139, unsigned char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -1;
unsigned char v142 = 6;
signed char v141 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v144, unsigned char v145, unsigned short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 3;
signed short v148 = -3;
signed short v147 = -2;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v150;
signed char v151;
unsigned int v152;
v150 = 4 - 0;
v151 = 2 - -1;
v152 = v19 (v150, v151);
history[history_index++] = (int)v152;
}
break;
case 17: 
return v144;
default: abort ();
}
}
}
}
