#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (signed int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
extern void v15 (void);
extern void (*v16) (void);
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed char, signed char, signed short);
extern signed int (*v22) (signed char, signed char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern signed short v25 (signed int, unsigned int, signed short, signed int);
extern signed short (*v26) (signed int, unsigned int, signed short, signed int);
unsigned short v27 (unsigned int);
unsigned short (*v28) (unsigned int) = v27;
extern signed char v29 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 0;
signed char v113 = 2;
unsigned short v112 = 0;

unsigned short v27 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 1;
signed short v117 = -2;
signed short v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed char v121 = 2;
unsigned int v120 = 4U;
unsigned short v119 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v122;
signed char v123;
v122 = v121 - -2;
v123 = v23 (v122);
history[history_index++] = (int)v123;
}
break;
case 2: 
{
v15 ();
}
break;
case 4: 
{
signed int v124;
unsigned short v125;
unsigned int v126;
v124 = -1 - -1;
v125 = v119 - 4;
v126 = v13 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 6: 
{
signed char v127;
unsigned short v128;
v127 = 3 + v121;
v128 = v9 (v127);
history[history_index++] = (int)v128;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
