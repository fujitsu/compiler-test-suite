#include <stdlib.h>
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
signed int v7 (unsigned char, signed short);
signed int (*v8) (unsigned char, signed short) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed short v13 (unsigned char);
signed short (*v14) (unsigned char) = v13;
unsigned short v15 (signed char, signed char, unsigned char, signed char);
unsigned short (*v16) (signed char, signed char, unsigned char, signed char) = v15;
extern void v17 (signed char, unsigned char, signed char);
extern void (*v18) (signed char, unsigned char, signed char);
extern unsigned short v19 (unsigned int, signed int, signed char);
extern unsigned short (*v20) (unsigned int, signed int, signed char);
extern void v21 (signed short, signed char, unsigned int);
extern void (*v22) (signed short, signed char, unsigned int);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern void v25 (unsigned short, signed short);
extern void (*v26) (unsigned short, signed short);
extern unsigned short v27 (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = 1;
unsigned char v103 = 2;
signed short v102 = -4;

unsigned short v15 (signed char v105, signed char v106, unsigned char v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 4;
signed char v110 = -1;
unsigned char v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed short v114 = 0;
signed short v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned short v118 = 2;
signed char v117 = 0;
unsigned char v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 7U;
signed char v122 = 0;
signed char v121 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v124;
unsigned int v125;
unsigned short v126;
unsigned int v127;
unsigned short v128;
v124 = v120 + 1;
v125 = 1U - v123;
v126 = 1 + 5;
v127 = v123 + v123;
v128 = v27 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 3: 
{
unsigned int v129;
v129 = v11 ();
history[history_index++] = (int)v129;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
