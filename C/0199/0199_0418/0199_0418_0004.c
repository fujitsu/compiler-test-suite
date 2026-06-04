#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern unsigned char v3 (signed int, signed short);
extern unsigned char (*v4) (signed int, signed short);
extern unsigned char v5 (unsigned short, unsigned char, signed int);
extern unsigned char (*v6) (unsigned short, unsigned char, signed int);
extern signed char v7 (signed short, unsigned int);
extern signed char (*v8) (signed short, unsigned int);
extern void v9 (signed int, unsigned char, unsigned int);
extern void (*v10) (signed int, unsigned char, unsigned int);
extern void v11 (unsigned int, unsigned int, signed short, unsigned short);
extern void (*v12) (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
void v17 (unsigned char);
void (*v18) (unsigned char) = v17;
unsigned char v19 (unsigned char, unsigned short, signed short);
unsigned char (*v20) (unsigned char, unsigned short, signed short) = v19;
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v132 = 6U;
unsigned short v131 = 2;
unsigned short v130 = 7;

unsigned char v19 (unsigned char v133, unsigned short v134, signed short v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -2;
unsigned char v137 = 0;
unsigned short v136 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
signed short v142 = 2;
unsigned short v141 = 4;
unsigned char v140 = 4;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}
