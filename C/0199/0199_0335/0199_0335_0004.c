#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (signed int, signed char, signed int);
extern signed short (*v6) (signed int, signed char, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern void v11 (unsigned char, signed char, signed int, unsigned short);
extern void (*v12) (unsigned char, signed char, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
unsigned short v17 (signed char, signed char);
unsigned short (*v18) (signed char, signed char) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned int v21 (unsigned short, signed char, signed int);
extern unsigned int (*v22) (unsigned short, signed char, signed int);
extern signed char v23 (signed short, unsigned char, unsigned short);
extern signed char (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned int, unsigned int);
extern void v27 (unsigned short, signed short, unsigned char, signed short);
extern void (*v28) (unsigned short, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 3;
unsigned char v131 = 1;
unsigned char v130 = 3;

signed int v19 (void)
{
{
for (;;) {
signed char v135 = -2;
signed char v134 = 2;
unsigned short v133 = 7;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v136;
unsigned int v137;
v136 = v133 + v133;
v137 = v3 (v136);
history[history_index++] = (int)v137;
}
break;
case 7: 
return 0;
case 11: 
return 2;
case 13: 
return -3;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v138, signed char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 7U;
signed int v141 = -1;
unsigned short v140 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
