#include <stdlib.h>
extern signed char v1 (signed short, signed short, signed short);
extern signed char (*v2) (signed short, signed short, signed short);
extern unsigned short v3 (unsigned short, signed int, unsigned char);
extern unsigned short (*v4) (unsigned short, signed int, unsigned char);
unsigned int v5 (signed char, signed int, unsigned int);
unsigned int (*v6) (signed char, signed int, unsigned int) = v5;
extern unsigned char v7 (signed short, unsigned int, unsigned int);
extern unsigned char (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed int v15 (unsigned char, signed int, unsigned char);
extern signed int (*v16) (unsigned char, signed int, unsigned char);
unsigned int v19 (signed short);
unsigned int (*v20) (signed short) = v19;
extern unsigned short v21 (unsigned short, signed short, unsigned char);
extern unsigned short (*v22) (unsigned short, signed short, unsigned char);
extern unsigned int v23 (signed char, unsigned char, signed char, unsigned int);
extern unsigned int (*v24) (signed char, unsigned char, signed char, unsigned int);
extern unsigned int v25 (signed short, signed char, signed char);
extern unsigned int (*v26) (signed short, signed char, signed char);
extern unsigned short v27 (unsigned short, signed short);
extern unsigned short (*v28) (unsigned short, signed short);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 0;
signed short v113 = -1;
signed short v112 = -4;

unsigned int v19 (signed short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 7;
signed short v117 = 3;
signed short v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v119, signed int v120, unsigned int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 7;
signed short v123 = -1;
signed short v122 = -3;
trace++;
switch (trace)
{
case 7: 
return v121;
case 9: 
{
unsigned short v125;
signed short v126;
unsigned char v127;
unsigned short v128;
v125 = 6 + 6;
v126 = v122 - -1;
v127 = 2 - 0;
v128 = v21 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return v121;
case 13: 
return v121;
default: abort ();
}
}
}
}
