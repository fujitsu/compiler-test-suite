#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern void v3 (void);
extern void (*v4) (void);
unsigned short v5 (signed short, signed short, unsigned int);
unsigned short (*v6) (signed short, signed short, unsigned int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern signed char v11 (unsigned short, unsigned char, unsigned short);
extern signed char (*v12) (unsigned short, unsigned char, unsigned short);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
unsigned short v17 (unsigned short, signed int);
unsigned short (*v18) (unsigned short, signed int) = v17;
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned int, signed int, signed short);
extern signed short (*v22) (signed short, unsigned int, signed int, signed short);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (signed short, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (signed char, unsigned char, signed char);
extern void (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v126 = 3U;
unsigned int v125 = 6U;
signed char v124 = 1;

unsigned short v17 (unsigned short v127, signed int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
unsigned char v130 = 4;
signed short v129 = -4;
trace++;
switch (trace)
{
case 2: 
{
signed short v132;
unsigned int v133;
signed int v134;
signed short v135;
signed short v136;
v132 = 0 + -3;
v133 = 5U + 4U;
v134 = 2 - v128;
v135 = v129 + v129;
v136 = v21 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 4: 
{
unsigned int v137;
v137 = v27 ();
history[history_index++] = (int)v137;
}
break;
case 11: 
return v127;
case 16: 
return v127;
default: abort ();
}
}
}
}

unsigned short v5 (signed short v138, signed short v139, unsigned int v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = -4;
signed char v142 = 1;
unsigned short v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
