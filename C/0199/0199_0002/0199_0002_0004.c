#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (unsigned char, signed char, signed char);
extern signed short (*v6) (unsigned char, signed char, signed char);
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
void v9 (signed short, signed int, unsigned short);
void (*v10) (signed short, signed int, unsigned short) = v9;
unsigned char v11 (unsigned short, unsigned char, signed char);
unsigned char (*v12) (unsigned short, unsigned char, signed char) = v11;
extern unsigned short v13 (unsigned int, signed short, unsigned short);
extern unsigned short (*v14) (unsigned int, signed short, unsigned short);
extern unsigned char v15 (signed int, signed int, signed short, unsigned int);
extern unsigned char (*v16) (signed int, signed int, signed short, unsigned int);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (unsigned int, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char);
extern void v25 (signed char, unsigned int, signed char, signed char);
extern void (*v26) (signed char, unsigned int, signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (unsigned char, unsigned short, unsigned short);
extern signed char (*v30) (unsigned char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v132 = 3;
unsigned char v131 = 5;
unsigned int v130 = 2U;

unsigned char v11 (unsigned short v133, unsigned char v134, signed char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -1;
unsigned short v137 = 4;
signed char v136 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v139;
v139 = v27 ();
history[history_index++] = (int)v139;
}
break;
case 13: 
return 4;
default: abort ();
}
}
}
}

void v9 (signed short v140, signed int v141, unsigned short v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 0;
unsigned short v144 = 0;
signed char v143 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
