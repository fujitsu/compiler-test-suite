#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned short v3 (signed int, unsigned int);
extern unsigned short (*v4) (signed int, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed int v7 (signed char, signed char, signed int);
extern signed int (*v8) (signed char, signed char, signed int);
unsigned int v9 (unsigned short, unsigned short, signed int);
unsigned int (*v10) (unsigned short, unsigned short, signed int) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
extern unsigned int v17 (signed char, unsigned char, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
extern unsigned int v21 (unsigned int, signed char);
extern unsigned int (*v22) (unsigned int, signed char);
signed short v23 (signed int, signed int, unsigned short);
signed short (*v24) (signed int, signed int, unsigned short) = v23;
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
unsigned short v27 (signed char, signed char, signed char);
unsigned short (*v28) (signed char, signed char, signed char) = v27;
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v124 = -2;
unsigned int v123 = 7U;
signed char v122 = 2;

unsigned short v27 (signed char v125, signed char v126, signed char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -3;
unsigned short v129 = 3;
unsigned short v128 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v131, signed int v132, unsigned short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 2U;
signed char v135 = -1;
unsigned short v134 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v137, unsigned short v138, signed int v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 3;
signed char v141 = -1;
signed char v140 = 0;
trace++;
switch (trace)
{
case 9: 
return 5U;
default: abort ();
}
}
}
}
