#include <stdlib.h>
extern unsigned char v1 (signed char, signed int);
extern unsigned char (*v2) (signed char, signed int);
extern unsigned char v3 (signed char, unsigned int, signed short, signed int);
extern unsigned char (*v4) (signed char, unsigned int, signed short, signed int);
extern signed int v5 (unsigned char, unsigned short, signed char, signed int);
extern signed int (*v6) (unsigned char, unsigned short, signed char, signed int);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned int v9 (signed int);
unsigned int (*v10) (signed int) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (unsigned char, unsigned char, unsigned short, signed int);
extern void (*v18) (unsigned char, unsigned char, unsigned short, signed int);
extern signed char v19 (signed int, unsigned char, unsigned char, unsigned short);
extern signed char (*v20) (signed int, unsigned char, unsigned char, unsigned short);
unsigned char v21 (unsigned char, signed int, signed short);
unsigned char (*v22) (unsigned char, signed int, signed short) = v21;
extern signed char v23 (signed int, signed char, unsigned char);
extern signed char (*v24) (signed int, signed char, unsigned char);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
signed int v27 (unsigned short, signed short);
signed int (*v28) (unsigned short, signed short) = v27;
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 6;
signed char v123 = 0;
signed char v122 = -1;

signed int v27 (unsigned short v125, signed short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 1;
unsigned short v128 = 7;
signed char v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v130, signed int v131, signed short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 3U;
unsigned short v134 = 6;
unsigned char v133 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v136;
signed char v137;
v136 = 7U + v135;
v137 = v29 (v136);
history[history_index++] = (int)v137;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}

unsigned int v9 (signed int v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -4;
unsigned short v140 = 5;
signed int v139 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
