#include <stdlib.h>
unsigned char v1 (signed short, unsigned int);
unsigned char (*v2) (signed short, unsigned int) = v1;
extern signed char v3 (unsigned int, signed char, signed int);
extern signed char (*v4) (unsigned int, signed char, signed int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
signed char v9 (signed short);
signed char (*v10) (signed short) = v9;
static unsigned char v11 (unsigned char, unsigned short);
static unsigned char (*v12) (unsigned char, unsigned short) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned short, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short, unsigned int, unsigned short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern unsigned short v19 (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned short, signed char, signed char);
extern unsigned int (*v24) (unsigned short, signed char, signed char);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern unsigned int v27 (signed char, signed char);
extern unsigned int (*v28) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v106 = 2;
unsigned short v105 = 1;
unsigned int v104 = 6U;

static unsigned char v11 (unsigned char v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 2;
unsigned short v110 = 4;
unsigned char v109 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v112;
signed char v113;
v112 = 2 - v111;
v113 = v17 (v112);
history[history_index++] = (int)v113;
}
break;
case 11: 
return v109;
default: abort ();
}
}
}
}

signed char v9 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 6U;
signed char v116 = 0;
signed short v115 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v118, unsigned int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 7U;
unsigned short v121 = 5;
signed short v120 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v123;
unsigned short v124;
unsigned char v125;
v123 = 6 - 6;
v124 = v121 - 1;
v125 = v11 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
