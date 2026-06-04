#include <stdlib.h>
unsigned short v1 (signed short, signed char, unsigned int, signed short);
unsigned short (*v2) (signed short, signed char, unsigned int, signed short) = v1;
extern signed int v3 (signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed int, unsigned short, unsigned short);
extern signed char v5 (unsigned int, unsigned int, signed short, signed int);
extern signed char (*v6) (unsigned int, unsigned int, signed short, signed int);
extern signed short v7 (signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int);
signed short v9 (unsigned short);
signed short (*v10) (unsigned short) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned char, unsigned short, unsigned char);
extern void v21 (unsigned char, signed char, signed short);
extern void (*v22) (unsigned char, signed char, signed short);
extern unsigned short v23 (unsigned short, unsigned int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned int, signed int);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed int v29 (signed int, unsigned short, signed char);
extern signed int (*v30) (signed int, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v133 = 1U;
signed int v132 = -1;
unsigned int v131 = 7U;

signed short v9 (unsigned short v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 7;
unsigned char v136 = 3;
unsigned short v135 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v138, signed char v139, unsigned int v140, signed short v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -2;
unsigned short v143 = 4;
signed int v142 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v145;
unsigned short v146;
unsigned short v147;
signed int v148;
v145 = v142 + v142;
v146 = 2 - 1;
v147 = 5 + 5;
v148 = v3 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
