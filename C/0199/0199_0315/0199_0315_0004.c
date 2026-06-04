#include <stdlib.h>
unsigned short v1 (unsigned char, signed char);
unsigned short (*v2) (unsigned char, signed char) = v1;
extern unsigned short v3 (unsigned char, signed short, signed int);
extern unsigned short (*v4) (unsigned char, signed short, signed int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern unsigned int v7 (signed int, unsigned short, signed int);
extern unsigned int (*v8) (signed int, unsigned short, signed int);
extern signed short v9 (unsigned int, signed int, signed short);
extern signed short (*v10) (unsigned int, signed int, signed short);
extern signed char v11 (signed short, signed short, unsigned char, signed int);
extern signed char (*v12) (signed short, signed short, unsigned char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (signed short, signed int, signed short);
extern signed int (*v22) (signed short, signed int, signed short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned short);
extern void (*v28) (unsigned int, signed short, unsigned short);
void v29 (unsigned short, unsigned char, signed int);
void (*v30) (unsigned short, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 5;
signed int v114 = -4;
signed int v113 = 0;

void v29 (unsigned short v116, unsigned char v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 1;
unsigned int v120 = 6U;
signed short v119 = 2;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed short v124 = 0;
signed int v123 = 1;
unsigned char v122 = 4;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
{
signed char v125;
v125 = v25 ();
history[history_index++] = (int)v125;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v126, signed char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -4;
unsigned short v129 = 4;
signed int v128 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v131;
signed short v132;
unsigned short v133;
v131 = 6U - 7U;
v132 = 2 - 3;
v133 = 5 - v129;
v27 (v131, v132, v133);
}
break;
case 2: 
{
signed int v134;
unsigned short v135;
signed int v136;
unsigned int v137;
v134 = v128 - v128;
v135 = v129 + 4;
v136 = v128 - -3;
v137 = v7 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 14: 
return v129;
default: abort ();
}
}
}
}
