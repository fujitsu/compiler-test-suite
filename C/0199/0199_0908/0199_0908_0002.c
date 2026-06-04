#include <stdlib.h>
signed int v1 (unsigned char, unsigned short, signed int, unsigned short);
signed int (*v2) (unsigned char, unsigned short, signed int, unsigned short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned int v5 (unsigned short, signed char, unsigned short);
unsigned int (*v6) (unsigned short, signed char, unsigned short) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (signed int, unsigned short, unsigned short);
extern signed int (*v12) (signed int, unsigned short, unsigned short);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern signed int v15 (unsigned char, signed int);
extern signed int (*v16) (unsigned char, signed int);
extern void v17 (signed short, signed int, signed short, signed int);
extern void (*v18) (signed short, signed int, signed short, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned int, unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned int, signed char, unsigned char);
extern signed int v23 (unsigned char, signed short);
extern signed int (*v24) (unsigned char, signed short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned int v27 (signed int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char);
extern signed char v29 (unsigned short, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 3U;
signed short v113 = -2;
signed short v112 = 0;

unsigned short v25 (void)
{
{
for (;;) {
unsigned int v117 = 2U;
signed int v116 = 1;
unsigned char v115 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v118, signed char v119, unsigned short v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 1U;
signed char v122 = -4;
unsigned char v121 = 6;
trace++;
switch (trace)
{
case 2: 
return 7U;
case 4: 
return v123;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v124, unsigned short v125, signed int v126, unsigned short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 3;
unsigned short v129 = 3;
signed char v128 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v131;
signed int v132;
signed int v133;
v131 = v124 + v124;
v132 = v126 + -2;
v133 = v15 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 14: 
return v126;
default: abort ();
}
}
}
}
