#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char);
signed char v3 (unsigned short, unsigned char);
signed char (*v4) (unsigned short, unsigned char) = v3;
extern unsigned int v5 (signed short, unsigned char, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char, unsigned char);
unsigned char v7 (unsigned char, signed short, unsigned int);
unsigned char (*v8) (unsigned char, signed short, unsigned int) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern signed int v15 (signed short, signed int, signed char, signed short);
extern signed int (*v16) (signed short, signed int, signed char, signed short);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
extern signed int v21 (signed char, unsigned char);
extern signed int (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern void v25 (unsigned int, unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v125 = 5U;
signed int v124 = -3;
signed char v123 = -4;

unsigned char v7 (unsigned char v126, signed short v127, unsigned int v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
signed short v130 = -3;
unsigned char v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v132, unsigned char v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 0;
signed int v135 = -1;
unsigned char v134 = 7;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v137;
unsigned int v138;
unsigned int v139;
v137 = 4U - 0U;
v138 = 7U + 4U;
v139 = 7U - 1U;
v25 (v137, v138, v139);
}
break;
case 7: 
{
signed short v140;
signed int v141;
signed char v142;
signed short v143;
signed int v144;
v140 = -2 - -4;
v141 = -2 + v135;
v142 = 1 + 1;
v143 = -1 + -4;
v144 = v15 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
