#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (signed int, unsigned char, signed int);
extern signed int (*v4) (signed int, unsigned char, signed int);
unsigned int v5 (unsigned short);
unsigned int (*v6) (unsigned short) = v5;
extern signed short v7 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v8) (unsigned int, signed int, unsigned short, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (unsigned short, unsigned int, signed int);
extern signed int (*v12) (unsigned short, unsigned int, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned char v15 (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
unsigned short v23 (signed short, unsigned char, signed char);
unsigned short (*v24) (signed short, unsigned char, signed char) = v23;
extern signed int v25 (signed char, unsigned int, unsigned char, unsigned int);
extern signed int (*v26) (signed char, unsigned int, unsigned char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int);
extern unsigned int (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v127 = 3;
unsigned char v126 = 3;
unsigned int v125 = 0U;

unsigned short v23 (signed short v128, unsigned char v129, signed char v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -2;
unsigned int v132 = 3U;
unsigned short v131 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = 2;
unsigned short v136 = 3;
signed short v135 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed char v138;
unsigned short v139;
v138 = -4 - v137;
v139 = v13 (v138);
history[history_index++] = (int)v139;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}
