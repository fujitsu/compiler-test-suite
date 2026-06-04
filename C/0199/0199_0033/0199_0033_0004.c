#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed int);
unsigned short v3 (unsigned char, unsigned int, signed short);
unsigned short (*v4) (unsigned char, unsigned int, signed short) = v3;
extern unsigned short v5 (signed short, unsigned char, unsigned int);
extern unsigned short (*v6) (signed short, unsigned char, unsigned int);
signed int v7 (unsigned char);
signed int (*v8) (unsigned char) = v7;
extern unsigned short v9 (unsigned short, unsigned char, signed short);
extern unsigned short (*v10) (unsigned short, unsigned char, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, signed short);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned char v21 (signed int, signed int, unsigned int);
extern unsigned char (*v22) (signed int, signed int, unsigned int);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed int v25 (signed int, signed int, unsigned short, signed char);
extern signed int (*v26) (signed int, signed int, unsigned short, signed char);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v112 = 4;
unsigned int v111 = 0U;
unsigned char v110 = 7;

unsigned short v27 (void)
{
{
for (;;) {
unsigned char v115 = 4;
signed short v114 = -3;
signed int v113 = 2;
trace++;
switch (trace)
{
case 2: 
return 2;
case 5: 
return 7;
case 7: 
return 6;
case 9: 
return 7;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed int v118 = -3;
signed short v117 = 2;
unsigned char v116 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 0;
signed char v121 = 3;
unsigned char v120 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v123;
v123 = v27 ();
history[history_index++] = (int)v123;
}
break;
case 3: 
{
signed short v124;
signed short v125;
v124 = 0 - v122;
v125 = v11 (v124);
history[history_index++] = (int)v125;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v126, unsigned int v127, signed short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 7;
signed short v130 = -2;
signed int v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
