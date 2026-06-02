#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed int v3 (unsigned char, signed int, unsigned short, unsigned char);
extern signed int (*v4) (unsigned char, signed int, unsigned short, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
extern signed int v9 (signed char, signed char, signed char, unsigned char);
extern signed int (*v10) (signed char, signed char, signed char, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (signed short, signed char, signed short);
extern signed short (*v16) (signed short, signed char, signed short);
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned int v19 (unsigned short, unsigned short, signed int);
unsigned int (*v20) (unsigned short, unsigned short, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (signed char, signed int, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed int, signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (signed int, signed int, unsigned short);
extern unsigned short (*v28) (signed int, signed int, unsigned short);
extern unsigned int v29 (unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v127 = 7;
signed int v126 = -3;
signed int v125 = -4;

unsigned int v19 (unsigned short v128, unsigned short v129, signed int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 2;
unsigned char v132 = 2;
signed int v131 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed char v136 = 0;
signed char v135 = 1;
unsigned short v134 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed int v137;
signed int v138;
unsigned short v139;
unsigned short v140;
v137 = -2 - 3;
v138 = 2 + 1;
v139 = 0 - v134;
v140 = v27 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 2: 
{
signed short v141;
signed int v142;
unsigned char v143;
unsigned short v144;
v141 = 2 - -3;
v142 = -4 - 0;
v143 = 1 - 6;
v144 = v7 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 16: 
return 5;
default: abort ();
}
}
}
}
