#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed short v3 (signed int, signed short);
extern signed short (*v4) (signed int, signed short);
extern unsigned short v5 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int, unsigned short, unsigned int);
extern signed char v7 (signed short, signed char, unsigned int, signed char);
extern signed char (*v8) (signed short, signed char, unsigned int, signed char);
extern unsigned char v9 (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char (*v10) (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char v11 (signed int, signed int);
extern unsigned char (*v12) (signed int, signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned short v15 (signed char, signed int, signed int);
extern unsigned short (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
unsigned char v21 (signed int, unsigned int);
unsigned char (*v22) (signed int, unsigned int) = v21;
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned char, signed int, unsigned int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int);
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 4;
unsigned short v109 = 7;
signed char v108 = 1;

signed short v23 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = 0;
signed short v113 = -3;
unsigned short v112 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed int v115, unsigned int v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 3U;
signed char v118 = -1;
unsigned int v117 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned short v122 = 1;
signed int v121 = -3;
signed int v120 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v123;
signed char v124;
unsigned int v125;
signed char v126;
signed char v127;
v123 = -2 + -1;
v124 = 3 + -3;
v125 = 5U - 1U;
v126 = -3 - 3;
v127 = v7 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 5: 
{
v1 ();
}
break;
case 9: 
{
v1 ();
}
break;
case 13: 
return v121;
case 15: 
return v120;
default: abort ();
}
}
}
}
