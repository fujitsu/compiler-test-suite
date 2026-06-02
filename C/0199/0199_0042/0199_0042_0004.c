#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (signed int, unsigned short);
extern unsigned char (*v6) (signed int, unsigned short);
signed int v7 (unsigned char, unsigned int);
signed int (*v8) (unsigned char, unsigned int) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v11 (signed char, unsigned char, signed char);
extern unsigned short (*v12) (signed char, unsigned char, signed char);
extern signed short v13 (unsigned short, unsigned short, signed short);
extern signed short (*v14) (unsigned short, unsigned short, signed short);
extern signed char v15 (signed short, unsigned short, unsigned int, signed short);
extern signed char (*v16) (signed short, unsigned short, unsigned int, signed short);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
signed short v21 (unsigned int, signed int);
signed short (*v22) (unsigned int, signed int) = v21;
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern unsigned int v25 (unsigned int, signed short, signed char);
extern unsigned int (*v26) (unsigned int, signed short, signed char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed short v29 (signed char, unsigned int);
extern signed short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = 2;
unsigned short v113 = 2;
signed char v112 = -2;

signed short v21 (unsigned int v115, signed int v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 1;
signed char v118 = -3;
unsigned int v117 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed int v122 = -4;
signed int v121 = -2;
unsigned int v120 = 1U;
trace++;
switch (trace)
{
case 5: 
{
signed char v123;
signed char v124;
v123 = 0 + -1;
v124 = -3 - 3;
v23 (v123, v124);
}
break;
case 7: 
{
signed short v125;
signed int v126;
v125 = 0 + -3;
v126 = v19 (v125);
history[history_index++] = (int)v126;
}
break;
case 9: 
{
signed short v127;
signed int v128;
v127 = -4 - -4;
v128 = v19 (v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed int v7 (unsigned char v129, unsigned int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 4;
signed short v132 = -1;
signed char v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
