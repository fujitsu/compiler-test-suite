#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern void v3 (unsigned int, signed char);
extern void (*v4) (unsigned int, signed char);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
void v7 (unsigned short, signed short, unsigned int);
void (*v8) (unsigned short, signed short, unsigned int) = v7;
extern unsigned int v9 (signed int, signed char, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned char);
extern void v11 (signed char, unsigned short, signed char, unsigned int);
extern void (*v12) (signed char, unsigned short, signed char, unsigned int);
extern unsigned int v13 (signed int, signed char, signed char);
extern unsigned int (*v14) (signed int, signed char, signed char);
extern void v15 (signed int, signed int);
extern void (*v16) (signed int, signed int);
extern signed int v17 (unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (unsigned char, unsigned char, unsigned int);
extern unsigned int v19 (unsigned int, unsigned short, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short);
extern signed short v21 (unsigned int, unsigned short, unsigned int, signed short);
extern signed short (*v22) (unsigned int, unsigned short, unsigned int, signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned short v27 (unsigned int, signed int, signed short);
extern unsigned short (*v28) (unsigned int, signed int, signed short);
unsigned char v29 (signed char, signed short, unsigned char);
unsigned char (*v30) (signed char, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v133 = 0;
unsigned char v132 = 2;
unsigned char v131 = 0;

unsigned char v29 (signed char v134, signed short v135, unsigned char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 3;
unsigned short v138 = 6;
unsigned char v137 = 7;
trace++;
switch (trace)
{
case 4: 
return v136;
case 6: 
{
unsigned int v140;
unsigned short v141;
unsigned int v142;
signed short v143;
signed short v144;
v140 = 6U - 7U;
v141 = v139 + 5;
v142 = 3U + 6U;
v143 = v135 - 1;
v144 = v21 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 12: 
return v137;
default: abort ();
}
}
}
}

void v7 (unsigned short v145, signed short v146, unsigned int v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned short v150 = 6;
unsigned char v149 = 6;
unsigned int v148 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
