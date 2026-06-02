#include <stdlib.h>
unsigned short v1 (signed int, unsigned char, unsigned char, unsigned int);
unsigned short (*v2) (signed int, unsigned char, unsigned char, unsigned int) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, signed short, signed char);
extern unsigned int (*v8) (signed int, signed short, signed char);
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
extern signed short v15 (unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, signed int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short);
unsigned short v21 (unsigned short, unsigned short);
unsigned short (*v22) (unsigned short, unsigned short) = v21;
extern signed char v25 (unsigned char, signed char, signed short, signed char);
extern signed char (*v26) (unsigned char, signed char, signed short, signed char);
extern signed short v27 (unsigned short, signed int);
extern signed short (*v28) (unsigned short, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v114 = 2;
signed short v113 = -4;
unsigned int v112 = 2U;

unsigned short v21 (unsigned short v115, unsigned short v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 2;
signed int v118 = 1;
unsigned short v117 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v120, unsigned char v121, unsigned char v122, unsigned int v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -2;
unsigned short v125 = 3;
signed char v124 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v127;
unsigned short v128;
signed char v129;
v127 = 3U - 6U;
v128 = 6 - 2;
v129 = v19 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 8: 
{
unsigned int v130;
v130 = v5 ();
history[history_index++] = (int)v130;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
