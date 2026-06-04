#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed int, signed short);
extern unsigned short v3 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
unsigned short v7 (unsigned short, unsigned char);
unsigned short (*v8) (unsigned short, unsigned char) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned int, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (signed int, signed short, unsigned char, signed short);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
signed int v27 (signed short, signed short);
signed int (*v28) (signed short, signed short) = v27;
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 4;
signed int v109 = 2;
unsigned short v108 = 3;

signed int v27 (signed short v111, signed short v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -2;
signed char v114 = 1;
signed char v113 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
signed char v118 = -4;
signed short v117 = 1;
unsigned char v116 = 7;
trace++;
switch (trace)
{
case 1: 
return v116;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 6;
signed char v122 = 2;
unsigned char v121 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v124;
signed int v125;
signed short v126;
v124 = 3U - 6U;
v125 = 0 - 1;
v126 = v29 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 5: 
{
unsigned int v127;
signed int v128;
signed short v129;
v127 = 2U - 3U;
v128 = 3 + 3;
v129 = v29 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 7: 
return v119;
default: abort ();
}
}
}
}
