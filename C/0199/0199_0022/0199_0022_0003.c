#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned int, signed int);
extern signed char (*v2) (signed char, signed int, unsigned int, signed int);
extern signed char v3 (unsigned int, unsigned char, signed int);
extern signed char (*v4) (unsigned int, unsigned char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
void v7 (signed int);
void (*v8) (signed int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
extern signed short v19 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v20) (signed char, unsigned int, unsigned char, unsigned int);
extern unsigned int v21 (signed char, signed short, signed char);
extern unsigned int (*v22) (signed char, signed short, signed char);
void v23 (signed int, unsigned short);
void (*v24) (signed int, unsigned short) = v23;
extern signed short v25 (signed int, signed char, signed int);
extern signed short (*v26) (signed int, signed char, signed int);
extern unsigned short v29 (unsigned char, signed int, unsigned int);
extern unsigned short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = -4;
unsigned int v108 = 0U;
signed int v107 = -2;

void v23 (signed int v110, unsigned short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = 2;
signed int v113 = 1;
unsigned short v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -2;
unsigned char v117 = 0;
signed char v116 = 3;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
{
signed char v119;
signed short v120;
signed char v121;
unsigned int v122;
v119 = v116 + 3;
v120 = -2 + -4;
v121 = v116 + v115;
v122 = v21 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

void v7 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 2;
signed int v125 = -4;
unsigned int v124 = 4U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v127;
unsigned char v128;
v127 = 3 + 4;
v128 = v15 (v127);
history[history_index++] = (int)v128;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
