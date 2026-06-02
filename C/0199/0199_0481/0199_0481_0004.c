#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, signed int, signed short);
extern unsigned char (*v16) (signed short, signed int, signed short);
extern unsigned char v17 (signed short, signed char, signed short, unsigned int);
extern unsigned char (*v18) (signed short, signed char, signed short, unsigned int);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern signed short v21 (signed short, unsigned short);
extern signed short (*v22) (signed short, unsigned short);
void v23 (unsigned short, unsigned short, signed char, signed short);
void (*v24) (unsigned short, unsigned short, signed char, signed short) = v23;
extern unsigned char v25 (unsigned short, unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern signed char v27 (unsigned int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v129 = -1;
signed short v128 = -4;
unsigned char v127 = 0;

void v23 (unsigned short v130, unsigned short v131, signed char v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 1;
unsigned short v135 = 7;
unsigned short v134 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 3;
signed char v139 = -1;
unsigned int v138 = 0U;
trace++;
switch (trace)
{
case 5: 
{
signed char v141;
v141 = v139 - v140;
v11 (v141);
}
break;
case 15: 
return -3;
default: abort ();
}
}
}
}
