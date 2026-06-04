#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned char, signed short);
extern signed short (*v2) (unsigned int, unsigned char, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned int v5 (unsigned char, unsigned short, signed int, signed int);
unsigned int (*v6) (unsigned char, unsigned short, signed int, signed int) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (signed short, unsigned int, signed int);
extern unsigned char (*v10) (signed short, unsigned int, signed int);
extern unsigned short v11 (unsigned int, signed short, unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short, unsigned int, signed short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed short v17 (unsigned int, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char);
extern unsigned short v19 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v20) (signed char, unsigned short, signed int, unsigned int);
extern signed short v21 (signed short, signed short, unsigned char);
extern signed short (*v22) (signed short, signed short, unsigned char);
extern signed int v23 (unsigned char, unsigned short, signed char);
extern signed int (*v24) (unsigned char, unsigned short, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short, signed short);
extern signed short (*v28) (unsigned short, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v119 = 7U;
signed short v118 = 3;
unsigned short v117 = 0;

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v122 = 2;
signed short v121 = -1;
signed short v120 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v125 = 3;
unsigned short v124 = 3;
unsigned int v123 = 5U;
trace++;
switch (trace)
{
case 5: 
{
v25 ();
}
break;
case 7: 
{
v25 ();
}
break;
case 9: 
{
unsigned int v126;
unsigned char v127;
signed short v128;
v126 = v123 + v123;
v127 = 2 + 3;
v128 = v17 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return v125;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v129, unsigned short v130, signed int v131, signed int v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 3;
signed char v134 = 2;
unsigned short v133 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
