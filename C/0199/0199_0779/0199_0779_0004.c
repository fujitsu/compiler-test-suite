#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern void v3 (signed char, signed char, signed short, unsigned char);
extern void (*v4) (signed char, signed char, signed short, unsigned char);
extern signed int v5 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned char, signed int);
signed char v7 (signed int, unsigned char, signed char);
signed char (*v8) (signed int, unsigned char, signed char) = v7;
extern unsigned int v9 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned int, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed char, unsigned int);
extern void (*v14) (signed char, unsigned int);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed char v17 (signed short, unsigned int, unsigned short);
extern signed char (*v18) (signed short, unsigned int, unsigned short);
extern unsigned char v19 (signed int, signed short, signed char);
extern unsigned char (*v20) (signed int, signed short, signed char);
extern signed int v21 (signed char, signed short, unsigned short);
extern signed int (*v22) (signed char, signed short, unsigned short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed short v25 (unsigned short, signed int, signed char);
extern signed short (*v26) (unsigned short, signed int, signed char);
extern unsigned char v27 (unsigned short, signed int);
extern unsigned char (*v28) (unsigned short, signed int);
unsigned char v29 (unsigned int);
unsigned char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v129 = 6;
signed char v128 = 2;
signed short v127 = -1;

unsigned char v29 (unsigned int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 5U;
unsigned int v132 = 7U;
signed short v131 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned int v136 = 2U;
unsigned char v135 = 7;
signed short v134 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v137, unsigned char v138, signed char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 7;
unsigned short v141 = 0;
signed short v140 = 3;
trace++;
switch (trace)
{
case 2: 
return v139;
default: abort ();
}
}
}
}
