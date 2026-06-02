#include <stdlib.h>
signed int v1 (unsigned int, unsigned char);
signed int (*v2) (unsigned int, unsigned char) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char, unsigned char);
extern signed short v21 (signed int, signed short, signed int);
extern signed short (*v22) (signed int, signed short, signed int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern unsigned int v25 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned int v29 (signed short, unsigned int, signed short);
unsigned int (*v30) (signed short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = -2;
signed char v112 = -2;
unsigned short v111 = 4;

unsigned int v29 (signed short v114, unsigned int v115, signed short v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 4;
signed int v118 = 0;
signed int v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v120, unsigned char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 1;
unsigned int v123 = 5U;
signed short v122 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v125;
v125 = v7 ();
history[history_index++] = (int)v125;
}
break;
case 2: 
{
unsigned short v126;
unsigned short v127;
unsigned short v128;
signed short v129;
unsigned int v130;
v126 = 3 - 4;
v127 = 7 - 7;
v128 = 5 + 2;
v129 = v122 - v122;
v130 = v25 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
