#include <stdlib.h>
unsigned short v1 (unsigned int, signed int);
unsigned short (*v2) (unsigned int, signed int) = v1;
extern void v3 (unsigned int, signed int);
extern void (*v4) (unsigned int, signed int);
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
extern signed short v7 (unsigned short, unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned int, signed char, signed int);
extern signed int v9 (signed int, signed char, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char, signed char);
extern void v11 (unsigned short, unsigned int);
extern void (*v12) (unsigned short, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v23 (signed int, signed int, signed char);
extern signed char (*v24) (signed int, signed int, signed char);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned char v29 (signed char, unsigned char, signed short);
unsigned char (*v30) (signed char, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = -2;
signed char v121 = -3;
signed int v120 = 1;

unsigned char v29 (signed char v123, unsigned char v124, signed short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 2;
signed short v127 = -1;
signed char v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
unsigned short v131 = 6;
unsigned char v130 = 0;
signed short v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v132, signed int v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 1U;
unsigned short v135 = 3;
unsigned char v134 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v137;
v137 = v17 ();
history[history_index++] = (int)v137;
}
break;
case 8: 
{
signed char v138;
v138 = v17 ();
history[history_index++] = (int)v138;
}
break;
case 10: 
{
signed char v139;
v139 = v17 ();
history[history_index++] = (int)v139;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
