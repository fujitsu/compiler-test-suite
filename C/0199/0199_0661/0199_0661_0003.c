#include <stdlib.h>
signed short v1 (signed int, unsigned short);
signed short (*v2) (signed int, unsigned short) = v1;
extern signed short v3 (unsigned int, signed short);
extern signed short (*v4) (unsigned int, signed short);
extern signed int v5 (unsigned char, signed short);
extern signed int (*v6) (unsigned char, signed short);
extern signed char v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned short v15 (signed char, signed int, signed char);
unsigned short (*v16) (signed char, signed int, signed char) = v15;
extern signed char v17 (unsigned short, unsigned short);
extern signed char (*v18) (unsigned short, unsigned short);
extern signed short v19 (signed int, unsigned int, unsigned char, unsigned char);
extern signed short (*v20) (signed int, unsigned int, unsigned char, unsigned char);
extern signed char v21 (signed int, signed char, unsigned int);
extern signed char (*v22) (signed int, signed char, unsigned int);
void v23 (signed char, signed char);
void (*v24) (signed char, signed char) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed char v29 (signed int, signed int);
extern signed char (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v115 = 1;
unsigned int v114 = 0U;
unsigned short v113 = 7;

void v23 (signed char v116, signed char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 2;
signed short v119 = 2;
signed char v118 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v121, signed int v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 3;
unsigned int v125 = 6U;
unsigned int v124 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v127, unsigned short v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 7U;
unsigned char v130 = 3;
unsigned char v129 = 6;
trace++;
switch (trace)
{
case 0: 
return 0;
case 1: 
{
signed short v132;
v132 = v9 ();
history[history_index++] = (int)v132;
}
break;
case 3: 
{
unsigned char v133;
signed short v134;
signed int v135;
v133 = v130 - 7;
v134 = 3 - -3;
v135 = v5 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}
