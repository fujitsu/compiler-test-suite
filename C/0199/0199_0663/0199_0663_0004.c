#include <stdlib.h>
extern unsigned short v1 (signed int, signed short, unsigned short);
extern unsigned short (*v2) (signed int, signed short, unsigned short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed char v7 (unsigned short, unsigned char);
extern signed char (*v8) (unsigned short, unsigned char);
extern unsigned int v9 (signed char, unsigned int, signed char);
extern unsigned int (*v10) (signed char, unsigned int, signed char);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned short v15 (signed short, unsigned int, signed int, signed short);
unsigned short (*v16) (signed short, unsigned int, signed int, signed short) = v15;
extern void v17 (unsigned char, unsigned int);
extern void (*v18) (unsigned char, unsigned int);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern unsigned char v25 (signed char, signed char);
extern unsigned char (*v26) (signed char, signed char);
unsigned int v27 (unsigned char, signed short, signed int);
unsigned int (*v28) (unsigned char, signed short, signed int) = v27;
extern signed char v29 (unsigned short, signed int, signed short);
extern signed char (*v30) (unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v129 = 3;
signed char v128 = 0;
signed char v127 = -2;

unsigned int v27 (unsigned char v130, signed short v131, signed int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -2;
unsigned int v134 = 2U;
unsigned int v133 = 4U;
trace++;
switch (trace)
{
case 1: 
return 0U;
case 10: 
return v133;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v136, unsigned int v137, signed int v138, signed short v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 3;
unsigned short v141 = 6;
unsigned char v140 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
