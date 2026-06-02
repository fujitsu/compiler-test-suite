#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned int v3 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, signed short);
unsigned int v5 (unsigned char, unsigned int);
unsigned int (*v6) (unsigned char, unsigned int) = v5;
extern signed short v7 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v8) (signed short, unsigned int, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed short, unsigned int);
extern unsigned int (*v12) (signed short, unsigned int);
signed int v13 (unsigned short, signed short);
signed int (*v14) (unsigned short, signed short) = v13;
extern void v15 (unsigned char, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned char, unsigned int, unsigned char, signed char);
extern signed char v17 (signed int, unsigned int, signed short);
extern signed char (*v18) (signed int, unsigned int, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (unsigned short, unsigned short, unsigned char, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short, unsigned char, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned int v27 (unsigned char, signed int, unsigned int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 4;
signed char v114 = 0;
unsigned short v113 = 7;

signed int v13 (unsigned short v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -4;
signed char v119 = -3;
signed char v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v121, unsigned int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 1U;
signed short v124 = 2;
signed short v123 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned char v128 = 4;
signed char v127 = 1;
signed int v126 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v129;
signed char v130;
unsigned int v131;
signed short v132;
unsigned int v133;
v129 = 4U + 6U;
v130 = v127 - v127;
v131 = 0U - 6U;
v132 = -2 - 0;
v133 = v3 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
