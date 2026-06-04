#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned char, signed char);
extern unsigned int (*v10) (unsigned short, unsigned char, signed char);
unsigned int v11 (signed char, unsigned char, signed char);
unsigned int (*v12) (signed char, unsigned char, signed char) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
unsigned char v19 (signed char, signed char, unsigned char);
unsigned char (*v20) (signed char, signed char, unsigned char) = v19;
extern signed int v21 (unsigned short, unsigned short);
extern signed int (*v22) (unsigned short, unsigned short);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
unsigned short v29 (unsigned char, signed short);
unsigned short (*v30) (unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v113 = -2;
unsigned char v112 = 0;
signed int v111 = 3;

unsigned short v29 (unsigned char v114, signed short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
unsigned int v117 = 7U;
signed short v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed char v119, signed char v120, unsigned char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = -4;
signed char v123 = -1;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v125;
unsigned char v126;
signed char v127;
unsigned int v128;
v125 = 2 + 4;
v126 = v121 - 7;
v127 = v120 - -2;
v128 = v9 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 6: 
return 7;
case 13: 
return 7;
default: abort ();
}
}
}
}

unsigned int v11 (signed char v129, unsigned char v130, signed char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = -2;
signed short v133 = -1;
signed char v132 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
