#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned char, unsigned short, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, signed char);
void v17 (unsigned short, unsigned char, signed int, unsigned int);
void (*v18) (unsigned short, unsigned char, signed int, unsigned int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
void v21 (void);
void (*v22) (void) = v21;
extern void v23 (signed char);
extern void (*v24) (signed char);
extern unsigned char v25 (unsigned short, signed short, signed char, signed short);
extern unsigned char (*v26) (unsigned short, signed short, signed char, signed short);
extern unsigned int v27 (signed char, signed char, unsigned int);
extern unsigned int (*v28) (signed char, signed char, unsigned int);
extern signed char v29 (signed short, unsigned int, unsigned char, unsigned char);
extern signed char (*v30) (signed short, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = -2;
unsigned char v119 = 5;
unsigned short v118 = 4;

void v21 (void)
{
{
for (;;) {
unsigned short v123 = 3;
signed short v122 = 3;
signed char v121 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v124, unsigned char v125, signed int v126, unsigned int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 7;
signed short v129 = -3;
unsigned int v128 = 5U;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
{
unsigned short v131;
signed short v132;
signed char v133;
signed short v134;
unsigned char v135;
v131 = 4 - v124;
v132 = v129 + v129;
v133 = 1 + -1;
v134 = v129 - -4;
v135 = v25 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 8: 
{
unsigned short v136;
signed short v137;
signed char v138;
signed short v139;
unsigned char v140;
v136 = v124 + v124;
v137 = v129 - -4;
v138 = -1 + -3;
v139 = v129 - 2;
v140 = v25 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 5;
signed short v143 = 0;
unsigned char v142 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
