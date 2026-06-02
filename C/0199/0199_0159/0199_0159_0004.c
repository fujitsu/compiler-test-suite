#include <stdlib.h>
unsigned short v1 (unsigned int);
unsigned short (*v2) (unsigned int) = v1;
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned int v7 (unsigned char, unsigned int, signed char);
extern unsigned int (*v8) (unsigned char, unsigned int, signed char);
extern void v9 (unsigned char, unsigned int, signed short, signed char);
extern void (*v10) (unsigned char, unsigned int, signed short, signed char);
extern void v11 (signed short, signed char, signed char);
extern void (*v12) (signed short, signed char, signed char);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed char v17 (unsigned char);
signed char (*v18) (unsigned char) = v17;
unsigned int v19 (unsigned int, unsigned char);
unsigned int (*v20) (unsigned int, unsigned char) = v19;
extern void v21 (signed int, signed int, unsigned short);
extern void (*v22) (signed int, signed int, unsigned short);
extern signed short v23 (unsigned char, signed char, signed int, signed char);
extern signed short (*v24) (unsigned char, signed char, signed int, signed char);
extern signed char v25 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v26) (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed int v27 (unsigned short, unsigned char);
extern signed int (*v28) (unsigned short, unsigned char);
extern signed int v29 (unsigned short, unsigned short, signed char);
extern signed int (*v30) (unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v127 = 5U;
unsigned int v126 = 3U;
unsigned short v125 = 0;

unsigned int v19 (unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
signed char v131 = 1;
unsigned int v130 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 5;
signed char v135 = 3;
unsigned char v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
unsigned int v140 = 5U;
unsigned short v139 = 6;
unsigned short v138 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v141;
v141 = v15 ();
history[history_index++] = (int)v141;
}
break;
case 10: 
{
unsigned char v142;
v142 = v15 ();
history[history_index++] = (int)v142;
}
break;
case 12: 
return v138;
default: abort ();
}
}
}
}
