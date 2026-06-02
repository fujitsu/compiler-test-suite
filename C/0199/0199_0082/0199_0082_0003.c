#include <stdlib.h>
extern unsigned short v3 (signed int, signed short, unsigned char);
extern unsigned short (*v4) (signed int, signed short, unsigned char);
extern unsigned char v5 (signed int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned int v9 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v10) (signed int, unsigned int, unsigned char, unsigned short);
extern signed int v11 (signed char, unsigned int, signed char);
extern signed int (*v12) (signed char, unsigned int, signed char);
signed int v13 (signed int, unsigned char, unsigned char, signed int);
signed int (*v14) (signed int, unsigned char, unsigned char, signed int) = v13;
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed int v23 (unsigned short, unsigned char, unsigned char);
extern signed int (*v24) (unsigned short, unsigned char, unsigned char);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern unsigned int v27 (signed int, signed short, signed int, signed short);
extern unsigned int (*v28) (signed int, signed short, signed int, signed short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v116 = -3;
signed short v115 = -4;
signed short v114 = -4;

unsigned int v21 (void)
{
{
for (;;) {
unsigned short v119 = 3;
signed int v118 = 1;
signed int v117 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed int v120;
signed short v121;
signed int v122;
signed short v123;
unsigned int v124;
v120 = v118 - 1;
v121 = 0 - -1;
v122 = v118 + v118;
v123 = -4 - -4;
v124 = v27 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 6: 
return 4U;
default: abort ();
}
}
}
}

signed int v13 (signed int v125, unsigned char v126, unsigned char v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = -2;
unsigned char v130 = 2;
signed char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
