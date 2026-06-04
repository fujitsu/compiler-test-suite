#include <stdlib.h>
unsigned short v1 (signed char);
unsigned short (*v2) (signed char) = v1;
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (signed int, unsigned int, signed int);
extern signed char (*v6) (signed int, unsigned int, signed int);
extern unsigned int v7 (unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, signed char);
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
unsigned char v17 (unsigned char, unsigned int);
unsigned char (*v18) (unsigned char, unsigned int) = v17;
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
extern unsigned char v21 (unsigned char, signed char, unsigned char);
extern unsigned char (*v22) (unsigned char, signed char, unsigned char);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern void v25 (signed char, signed char, signed short);
extern void (*v26) (signed char, signed char, signed short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v129 = -1;
signed int v128 = -3;
unsigned char v127 = 7;

unsigned char v17 (unsigned char v130, unsigned int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = 2;
unsigned char v133 = 1;
unsigned short v132 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed short v137 = -1;
unsigned char v136 = 2;
signed char v135 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 2U;
signed char v140 = 3;
signed short v139 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v142;
unsigned int v143;
v142 = v141 + 2U;
v143 = v3 (v142);
history[history_index++] = (int)v143;
}
break;
case 2: 
{
unsigned short v144;
signed char v145;
unsigned short v146;
v144 = 5 + 7;
v145 = v140 - -4;
v146 = v15 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
