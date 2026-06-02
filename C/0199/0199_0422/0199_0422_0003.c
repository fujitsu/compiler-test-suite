#include <stdlib.h>
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (unsigned char, signed char, signed int, signed int);
extern signed short (*v6) (unsigned char, signed char, signed int, signed int);
extern signed int v7 (signed short, unsigned short, signed short, signed char);
extern signed int (*v8) (signed short, unsigned short, signed short, signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed int, signed short, unsigned short, signed short);
extern unsigned int (*v12) (signed int, signed short, unsigned short, signed short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed char v15 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v16) (unsigned int, signed short, unsigned char, signed char);
extern signed int v17 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v18) (signed short, unsigned short, unsigned short, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed char, signed char, signed short);
extern void (*v22) (signed char, signed char, signed short);
extern signed short v23 (unsigned char, unsigned char, signed short);
extern signed short (*v24) (unsigned char, unsigned char, signed short);
extern unsigned int v25 (signed int, signed char, unsigned char, unsigned short);
extern unsigned int (*v26) (signed int, signed char, unsigned char, unsigned short);
signed char v27 (unsigned short, unsigned char);
signed char (*v28) (unsigned short, unsigned char) = v27;
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v114 = -3;
signed int v113 = -2;
signed short v112 = -4;

signed char v27 (unsigned short v115, unsigned char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -2;
signed short v118 = -2;
unsigned char v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v122 = 3;
unsigned short v121 = 2;
unsigned int v120 = 6U;
trace++;
switch (trace)
{
case 1: 
{
signed short v123;
signed char v124;
signed int v125;
v123 = 3 + -1;
v124 = -2 + 3;
v125 = v29 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 3: 
{
signed short v126;
signed char v127;
signed int v128;
v126 = -2 + -3;
v127 = -3 - 0;
v128 = v29 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 5: 
{
signed int v129;
signed short v130;
unsigned short v131;
signed short v132;
unsigned int v133;
v129 = -3 - 3;
v130 = 3 - -2;
v131 = v121 - 1;
v132 = -1 - 2;
v133 = v11 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
