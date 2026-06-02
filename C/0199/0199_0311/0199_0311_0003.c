#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (signed int, unsigned int, signed int);
extern signed char (*v6) (signed int, unsigned int, signed int);
extern unsigned int v7 (unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, signed char);
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned short v15 (unsigned short, signed char);
unsigned short (*v16) (unsigned short, signed char) = v15;
extern unsigned char v17 (unsigned char, unsigned int);
extern unsigned char (*v18) (unsigned char, unsigned int);
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
unsigned char v21 (unsigned char, signed char, unsigned char);
unsigned char (*v22) (unsigned char, signed char, unsigned char) = v21;
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern void v25 (signed char, signed char, signed short);
extern void (*v26) (signed char, signed char, signed short);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v108 = 1U;
signed int v107 = -4;
unsigned char v106 = 6;

unsigned int v29 (void)
{
{
for (;;) {
unsigned short v111 = 6;
unsigned int v110 = 3U;
signed int v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v112, signed char v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 0;
signed short v116 = 0;
unsigned char v115 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v118, signed char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 5;
unsigned int v121 = 0U;
unsigned char v120 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v123;
signed char v124;
v123 = v119 - v119;
v124 = v23 (v123);
history[history_index++] = (int)v124;
}
break;
case 9: 
{
signed char v125;
signed char v126;
v125 = -2 + v119;
v126 = v23 (v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
