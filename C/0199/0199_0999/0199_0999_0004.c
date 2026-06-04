#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern signed short v7 (signed short, unsigned int, unsigned short);
extern signed short (*v8) (signed short, unsigned int, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern void v17 (unsigned int, unsigned char, unsigned short);
extern void (*v18) (unsigned int, unsigned char, unsigned short);
signed short v19 (signed short, signed short, signed char);
signed short (*v20) (signed short, signed short, signed char) = v19;
extern unsigned char v23 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (unsigned int, signed short, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 1;
unsigned int v117 = 7U;
unsigned short v116 = 0;

signed short v19 (signed short v119, signed short v120, signed char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 4;
signed int v123 = 3;
unsigned short v122 = 6;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v125;
signed short v126;
unsigned char v127;
signed short v128;
unsigned char v129;
v125 = 2U + 1U;
v126 = 0 - 1;
v127 = 7 - 0;
v128 = -2 + v120;
v129 = v23 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 10: 
{
unsigned int v130;
signed short v131;
unsigned char v132;
signed short v133;
unsigned char v134;
v130 = 6U + 5U;
v131 = v120 + v119;
v132 = 3 - 2;
v133 = -1 + v120;
v134 = v23 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 12: 
return v119;
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
unsigned int v137 = 7U;
unsigned int v136 = 7U;
signed int v135 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
