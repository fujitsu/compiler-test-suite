#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, unsigned short);
extern signed short (*v2) (signed int, unsigned short, unsigned short);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned int, signed char);
extern unsigned int (*v14) (unsigned int, signed char);
unsigned int v15 (signed int, signed short, unsigned int, unsigned short);
unsigned int (*v16) (signed int, signed short, unsigned int, unsigned short) = v15;
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned short v19 (unsigned short, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned char, unsigned int, signed short);
extern signed short (*v22) (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern unsigned int v25 (signed char, unsigned char, unsigned int, signed short);
extern unsigned int (*v26) (signed char, unsigned char, unsigned int, signed short);
extern unsigned int v27 (signed int, unsigned short, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short, unsigned short);
extern signed short v29 (signed int, unsigned char);
extern signed short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = -4;
unsigned char v133 = 2;
signed int v132 = -1;

unsigned int v15 (signed int v135, signed short v136, unsigned int v137, unsigned short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 4;
unsigned short v140 = 0;
unsigned short v139 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v142;
v142 = v139 + v139;
v17 (v142);
}
break;
case 5: 
{
signed char v143;
unsigned char v144;
unsigned int v145;
signed short v146;
unsigned int v147;
v143 = 1 - -1;
v144 = v141 - v141;
v145 = v137 - 1U;
v146 = 3 - v136;
v147 = v25 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 11: 
return v137;
default: abort ();
}
}
}
}
