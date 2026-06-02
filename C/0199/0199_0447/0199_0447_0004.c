#include <stdlib.h>
extern void v3 (unsigned short, unsigned short, unsigned short, unsigned char);
extern void (*v4) (unsigned short, unsigned short, unsigned short, unsigned char);
unsigned int v5 (unsigned int, unsigned int, unsigned short, unsigned short);
unsigned int (*v6) (unsigned int, unsigned int, unsigned short, unsigned short) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (unsigned short, signed short, unsigned char, unsigned int);
extern signed short (*v10) (unsigned short, signed short, unsigned char, unsigned int);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern signed int v15 (signed short, unsigned int, signed char);
extern signed int (*v16) (signed short, unsigned int, signed char);
extern unsigned short v17 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short, unsigned short);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned short v21 (unsigned short, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, unsigned short, signed char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v118 = 6U;
unsigned int v117 = 4U;
unsigned short v116 = 4;

unsigned char v27 (void)
{
{
for (;;) {
signed short v121 = 1;
unsigned short v120 = 0;
unsigned int v119 = 1U;
trace++;
switch (trace)
{
case 8: 
return 7;
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
signed short v124 = 3;
unsigned char v123 = 2;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v125, unsigned int v126, unsigned short v127, unsigned short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 3;
signed short v130 = -2;
unsigned short v129 = 5;
trace++;
switch (trace)
{
case 2: 
{
signed char v132;
signed int v133;
v132 = -4 - 1;
v133 = v23 (v132);
history[history_index++] = (int)v133;
}
break;
case 4: 
{
signed char v134;
signed int v135;
v134 = -4 - -1;
v135 = v23 (v134);
history[history_index++] = (int)v135;
}
break;
case 6: 
{
signed char v136;
v136 = v7 ();
history[history_index++] = (int)v136;
}
break;
case 12: 
return v126;
default: abort ();
}
}
}
}
