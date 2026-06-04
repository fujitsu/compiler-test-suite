#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, signed short, signed int);
extern unsigned char (*v2) (signed char, signed short, signed short, signed int);
extern signed int v3 (signed char, signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed char, signed int, unsigned short, unsigned short);
signed char v5 (signed short, signed short, unsigned int);
signed char (*v6) (signed short, signed short, unsigned int) = v5;
extern signed char v7 (unsigned int, unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int, unsigned int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed short v11 (signed short, unsigned int, unsigned int, signed int);
extern signed short (*v12) (signed short, unsigned int, unsigned int, signed int);
extern signed char v13 (unsigned short, signed int);
extern signed char (*v14) (unsigned short, signed int);
extern signed int v15 (signed int, unsigned short, unsigned short);
extern signed int (*v16) (signed int, unsigned short, unsigned short);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
static signed int v19 (void);
static signed int (*v20) (void) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = -3;
unsigned char v118 = 3;
signed char v117 = -4;

signed int v23 (unsigned int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 1;
signed char v122 = 0;
unsigned char v121 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (void)
{
{
for (;;) {
signed short v126 = -2;
unsigned char v125 = 5;
unsigned char v124 = 2;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return 2;
case 6: 
return 2;
case 8: 
return -1;
case 10: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (signed short v127, signed short v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -1;
unsigned char v131 = 0;
unsigned short v130 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v133;
v133 = v19 ();
history[history_index++] = (int)v133;
}
break;
case 3: 
{
signed int v134;
v134 = v19 ();
history[history_index++] = (int)v134;
}
break;
case 5: 
{
signed int v135;
v135 = v19 ();
history[history_index++] = (int)v135;
}
break;
case 7: 
{
signed int v136;
v136 = v19 ();
history[history_index++] = (int)v136;
}
break;
case 9: 
{
signed int v137;
v137 = v19 ();
history[history_index++] = (int)v137;
}
break;
case 11: 
return v132;
default: abort ();
}
}
}
}
