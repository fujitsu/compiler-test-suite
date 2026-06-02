#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned char, signed int, signed char);
extern unsigned int (*v4) (unsigned short, unsigned char, signed int, signed char);
unsigned char v5 (unsigned char, signed char, signed int, unsigned short);
unsigned char (*v6) (unsigned char, signed char, signed int, unsigned short) = v5;
signed short v7 (signed char);
signed short (*v8) (signed char) = v7;
extern unsigned short v9 (unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern signed int v13 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v14) (unsigned char, unsigned char, signed int, signed short);
extern signed int v15 (signed int, unsigned int);
extern signed int (*v16) (signed int, unsigned int);
extern unsigned char v17 (signed short, signed short, unsigned short);
extern unsigned char (*v18) (signed short, signed short, unsigned short);
extern signed char v19 (signed char, signed short);
extern signed char (*v20) (signed char, signed short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
unsigned short v23 (unsigned int, signed int, signed short);
unsigned short (*v24) (unsigned int, signed int, signed short) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
signed short v27 (signed short, signed short);
signed short (*v28) (signed short, signed short) = v27;
extern signed int v29 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v119 = 3;
signed short v118 = -3;
unsigned char v117 = 4;

signed short v27 (signed short v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 6U;
signed short v123 = 3;
signed short v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v125, signed int v126, signed short v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -2;
signed int v129 = -4;
unsigned char v128 = 5;
trace++;
switch (trace)
{
case 2: 
{
signed int v131;
v131 = v25 ();
history[history_index++] = (int)v131;
}
break;
case 4: 
{
signed int v132;
v132 = v25 ();
history[history_index++] = (int)v132;
}
break;
case 6: 
return 3;
case 10: 
return 5;
default: abort ();
}
}
}
}

signed short v7 (signed char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 7U;
unsigned char v135 = 3;
signed short v134 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v137, signed char v138, signed int v139, unsigned short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 2;
unsigned short v142 = 5;
signed short v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
