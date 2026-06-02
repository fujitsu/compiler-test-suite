#include <stdlib.h>
extern void v1 (signed char, signed int, signed short);
extern void (*v2) (signed char, signed int, signed short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned char, signed char, unsigned int);
extern signed char (*v16) (unsigned char, signed char, unsigned int);
static unsigned int v17 (signed int, unsigned short, signed int, signed char);
static unsigned int (*v18) (signed int, unsigned short, signed int, signed char) = v17;
extern signed short v19 (signed char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (signed char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned short);
extern void (*v24) (unsigned short, unsigned short);
extern unsigned short v25 (unsigned int, signed int, unsigned char);
extern unsigned short (*v26) (unsigned int, signed int, unsigned char);
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned short);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v123 = -1;
unsigned short v122 = 3;
unsigned int v121 = 5U;

static unsigned int v17 (signed int v124, unsigned short v125, signed int v126, signed char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 1U;
signed char v129 = -3;
unsigned int v128 = 6U;
trace++;
switch (trace)
{
case 6: 
return v130;
case 8: 
return 1U;
case 10: 
return v130;
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned int v133 = 0U;
signed short v132 = 3;
unsigned char v131 = 7;
trace++;
switch (trace)
{
case 5: 
{
signed int v134;
unsigned short v135;
signed int v136;
signed char v137;
unsigned int v138;
v134 = -2 - 0;
v135 = 7 - 6;
v136 = 0 + -4;
v137 = 0 - 2;
v138 = v17 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 7: 
{
signed int v139;
unsigned short v140;
signed int v141;
signed char v142;
unsigned int v143;
v139 = 3 - 0;
v140 = 3 + 3;
v141 = 3 + -1;
v142 = 2 + -2;
v143 = v17 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 9: 
{
signed int v144;
unsigned short v145;
signed int v146;
signed char v147;
unsigned int v148;
v144 = -4 + 3;
v145 = 5 + 5;
v146 = -1 - -2;
v147 = 0 + -2;
v148 = v17 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 11: 
return v133;
default: abort ();
}
}
}
}
