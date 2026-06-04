#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
unsigned int v3 (unsigned int, signed int, signed short);
unsigned int (*v4) (unsigned int, signed int, signed short) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed short, signed char, signed short, unsigned int);
extern signed short (*v10) (signed short, signed char, signed short, unsigned int);
extern signed short v11 (signed char, unsigned char, signed int, signed int);
extern signed short (*v12) (signed char, unsigned char, signed int, signed int);
extern signed short v15 (unsigned char, unsigned int, signed char);
extern signed short (*v16) (unsigned char, unsigned int, signed char);
unsigned short v17 (signed short, unsigned int);
unsigned short (*v18) (signed short, unsigned int) = v17;
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
unsigned char v25 (signed char);
unsigned char (*v26) (signed char) = v25;
extern signed int v27 (unsigned int, signed char, signed short);
extern signed int (*v28) (unsigned int, signed char, signed short);
extern signed char v29 (unsigned int, signed int);
extern signed char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v125 = 2;
unsigned int v124 = 4U;
signed char v123 = 2;

unsigned char v25 (signed char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 1U;
signed char v128 = 1;
unsigned char v127 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed short v130, unsigned int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = -2;
signed char v133 = -2;
unsigned char v132 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed short v135;
unsigned short v136;
v135 = v130 - -1;
v136 = v19 (v135);
history[history_index++] = (int)v136;
}
break;
case 4: 
return 3;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v137, signed int v138, signed short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = -2;
unsigned short v141 = 7;
unsigned int v140 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
