#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern void v3 (unsigned char, unsigned short);
extern void (*v4) (unsigned char, unsigned short);
unsigned short v5 (signed char, signed int, unsigned short, signed int);
unsigned short (*v6) (signed char, signed int, unsigned short, signed int) = v5;
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
extern signed char v11 (unsigned char, unsigned int);
extern signed char (*v12) (unsigned char, unsigned int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned short v15 (unsigned short, signed short);
extern unsigned short (*v16) (unsigned short, signed short);
extern signed short v17 (unsigned char, unsigned int, signed char, unsigned int);
extern signed short (*v18) (unsigned char, unsigned int, signed char, unsigned int);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned char, signed char, signed char);
extern signed int (*v26) (unsigned char, signed char, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v127 = 0;
unsigned char v126 = 0;
signed short v125 = -4;

unsigned char v13 (void)
{
{
for (;;) {
signed int v130 = 0;
signed int v129 = 3;
unsigned short v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v131, signed int v132, unsigned short v133, signed int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -3;
unsigned int v136 = 0U;
unsigned int v135 = 1U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v138;
signed short v139;
unsigned short v140;
v138 = v133 + v133;
v139 = -3 - 0;
v140 = v15 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 7: 
{
unsigned int v141;
v141 = v135 - 7U;
v7 (v141);
}
break;
case 9: 
{
signed char v142;
unsigned short v143;
signed char v144;
v142 = v137 + v131;
v143 = 6 + 4;
v144 = v19 (v142, v143);
history[history_index++] = (int)v144;
}
break;
case 13: 
return 4;
case 15: 
return v133;
default: abort ();
}
}
}
}
