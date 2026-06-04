#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v5 (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char (*v6) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern void v9 (signed int, signed int, unsigned int, signed int);
extern void (*v10) (signed int, signed int, unsigned int, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned char, unsigned short);
signed char v15 (signed int, unsigned int, unsigned int, signed char);
signed char (*v16) (signed int, unsigned int, unsigned int, signed char) = v15;
extern unsigned int v17 (signed short, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int, signed char, unsigned int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed char v23 (signed char, signed char, signed int);
extern signed char (*v24) (signed char, signed char, signed int);
signed char v25 (signed int, signed char);
signed char (*v26) (signed int, signed char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned char, unsigned char);
extern void (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v129 = -3;
unsigned short v128 = 5;
unsigned int v127 = 1U;

signed char v25 (signed int v130, signed char v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -2;
signed int v133 = 3;
unsigned short v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v135, unsigned int v136, unsigned int v137, signed char v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 6;
signed int v140 = -3;
signed int v139 = 2;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}
