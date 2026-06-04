#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned int, signed short);
unsigned int v3 (unsigned char, unsigned char);
unsigned int (*v4) (unsigned char, unsigned char) = v3;
extern unsigned int v5 (unsigned short, signed short, unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, signed char, signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned short);
extern signed short (*v18) (unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (void);
extern void (*v22) (void);
unsigned char v23 (unsigned char, signed short);
unsigned char (*v24) (unsigned char, signed short) = v23;
extern signed int v25 (signed short, signed char, signed char);
extern signed int (*v26) (signed short, signed char, signed char);
signed short v27 (signed int, unsigned char, unsigned char, signed int);
signed short (*v28) (signed int, unsigned char, unsigned char, signed int) = v27;
extern void v29 (signed short, unsigned short, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v123 = 6;
unsigned char v122 = 5;
unsigned short v121 = 3;

signed short v27 (signed int v124, unsigned char v125, unsigned char v126, signed int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -3;
unsigned char v129 = 3;
signed char v128 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v131, signed short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 1;
signed int v134 = -3;
unsigned short v133 = 4;
trace++;
switch (trace)
{
case 10: 
{
signed short v136;
signed char v137;
signed char v138;
signed int v139;
v136 = v132 + v132;
v137 = v135 + -4;
v138 = v135 + -1;
v139 = v25 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v140, unsigned char v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 4;
signed int v143 = 1;
signed short v142 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
