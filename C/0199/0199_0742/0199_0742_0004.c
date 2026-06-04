#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned char v7 (unsigned char, signed char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed char, unsigned short);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern void v11 (unsigned int, signed int, signed int);
extern void (*v12) (unsigned int, signed int, signed int);
unsigned char v13 (signed int, signed int, unsigned char);
unsigned char (*v14) (signed int, signed int, unsigned char) = v13;
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
extern unsigned char v17 (signed short, unsigned int, signed char, unsigned char);
extern unsigned char (*v18) (signed short, unsigned int, signed char, unsigned char);
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed short v27 (unsigned char, signed int);
extern signed short (*v28) (unsigned char, signed int);
extern signed int v29 (signed char, unsigned int, signed int);
extern signed int (*v30) (signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v134 = 3U;
signed int v133 = -4;
unsigned int v132 = 5U;

unsigned char v13 (signed int v135, signed int v136, unsigned char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -1;
signed int v139 = 2;
unsigned char v138 = 7;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v141;
unsigned int v142;
signed char v143;
v141 = 6U + 7U;
v142 = 3U + 2U;
v143 = v15 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 7: 
{
unsigned char v144;
signed int v145;
signed short v146;
v144 = v138 + v137;
v145 = v136 + v136;
v146 = v27 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 9: 
{
unsigned int v147;
unsigned int v148;
signed char v149;
v147 = 0U + 0U;
v148 = 3U + 1U;
v149 = v15 (v147, v148);
history[history_index++] = (int)v149;
}
break;
case 13: 
return v138;
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned char v152 = 5;
signed short v151 = -3;
unsigned char v150 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
