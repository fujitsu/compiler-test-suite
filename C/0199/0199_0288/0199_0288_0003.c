#include <stdlib.h>
signed short v1 (signed int, signed short, signed char);
signed short (*v2) (signed int, signed short, signed char) = v1;
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (signed char, unsigned short, signed int);
extern signed int (*v8) (signed char, unsigned short, signed int);
unsigned short v9 (signed char, signed int, signed int);
unsigned short (*v10) (signed char, signed int, signed int) = v9;
extern signed short v11 (signed int, unsigned char, unsigned char);
extern signed short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern void v19 (signed short, signed short, signed short);
extern void (*v20) (signed short, signed short, signed short);
extern void v21 (signed char, unsigned int);
extern void (*v22) (signed char, unsigned int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char, signed char, unsigned char, unsigned short);
extern signed int (*v28) (signed char, signed char, unsigned char, unsigned short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v108 = 1U;
signed short v107 = -1;
signed char v106 = 2;

unsigned short v9 (signed char v109, signed int v110, signed int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 1U;
unsigned char v113 = 6;
signed int v112 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v115, signed short v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 7U;
unsigned short v119 = 2;
signed char v118 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v121;
signed char v122;
v121 = 2 + 4;
v122 = v17 (v121);
history[history_index++] = (int)v122;
}
break;
case 2: 
{
unsigned char v123;
signed short v124;
signed char v125;
v123 = 2 - 2;
v124 = v116 - v116;
v125 = v5 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 4: 
{
unsigned char v126;
signed short v127;
signed char v128;
v126 = 5 + 0;
v127 = 1 + -3;
v128 = v5 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 12: 
return v116;
default: abort ();
}
}
}
}
