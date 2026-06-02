#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
unsigned char v9 (signed int, signed char);
unsigned char (*v10) (signed int, signed char) = v9;
extern signed int v11 (unsigned char, unsigned char, unsigned char);
extern signed int (*v12) (unsigned char, unsigned char, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned int v15 (signed short, signed char);
extern unsigned int (*v16) (signed short, signed char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned int v19 (signed char, unsigned int, signed short);
extern unsigned int (*v20) (signed char, unsigned int, signed short);
void v21 (signed int);
void (*v22) (signed int) = v21;
extern unsigned char v23 (signed char, unsigned short, signed int, signed short);
extern unsigned char (*v24) (signed char, unsigned short, signed int, signed short);
extern unsigned short v25 (signed int, unsigned short, signed short, unsigned int);
extern unsigned short (*v26) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v27 (signed char, signed int, signed int);
extern unsigned char (*v28) (signed char, signed int, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v112 = 2U;
signed int v111 = 0;
signed char v110 = 3;

void v21 (signed int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = -4;
unsigned int v115 = 6U;
unsigned int v114 = 7U;
trace++;
switch (trace)
{
case 3: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v9 (signed int v117, signed char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 6U;
signed int v120 = -2;
signed short v119 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned char v124 = 4;
signed char v123 = 1;
unsigned int v122 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed int v125;
unsigned short v126;
signed short v127;
unsigned int v128;
unsigned short v129;
v125 = -2 - -2;
v126 = 6 - 6;
v127 = 2 + -1;
v128 = v122 - 7U;
v129 = v25 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
{
signed int v130;
v130 = -2 + -3;
v21 (v130);
}
break;
case 4: 
{
unsigned char v131;
unsigned char v132;
unsigned char v133;
signed int v134;
v131 = 3 - 2;
v132 = 5 - 6;
v133 = 5 - v124;
v134 = v11 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 6: 
return -1;
case 12: 
return 2;
default: abort ();
}
}
}
}
