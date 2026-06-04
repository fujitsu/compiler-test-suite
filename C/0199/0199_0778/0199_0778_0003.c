#include <stdlib.h>
unsigned int v1 (unsigned short, signed short);
unsigned int (*v2) (unsigned short, signed short) = v1;
extern unsigned int v3 (unsigned char, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned int, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern signed char v9 (unsigned int, unsigned int, signed short, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed short, signed short);
extern signed char v11 (signed int, unsigned short);
extern signed char (*v12) (signed int, unsigned short);
extern unsigned char v13 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned short, unsigned int);
signed int v15 (unsigned char, unsigned int, unsigned char);
signed int (*v16) (unsigned char, unsigned int, unsigned char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed char, signed int, signed char);
extern unsigned char (*v20) (signed char, signed int, signed char);
extern signed int v21 (unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned char, signed int);
extern signed char v25 (signed char, signed char);
extern signed char (*v26) (signed char, signed char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v123 = 2;
unsigned short v122 = 5;
unsigned char v121 = 1;

unsigned int v27 (void)
{
{
for (;;) {
signed short v126 = -4;
signed char v125 = 3;
unsigned char v124 = 4;
trace++;
switch (trace)
{
case 8: 
return 4U;
case 10: 
return 1U;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v127, unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 1;
unsigned char v131 = 4;
signed char v130 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = 2;
unsigned int v136 = 0U;
signed short v135 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v138;
unsigned int v139;
unsigned char v140;
unsigned int v141;
v138 = 3 + 6;
v139 = 0U + 1U;
v140 = 1 - 5;
v141 = v3 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return v136;
default: abort ();
}
}
}
}
