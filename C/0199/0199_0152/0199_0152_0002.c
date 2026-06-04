#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
extern unsigned short v7 (signed int, unsigned int, signed int, unsigned short);
extern unsigned short (*v8) (signed int, unsigned int, signed int, unsigned short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern signed char v11 (signed int, unsigned short, signed char);
extern signed char (*v12) (signed int, unsigned short, signed char);
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern void v17 (signed short, signed short);
extern void (*v18) (signed short, signed short);
unsigned int v19 (unsigned short);
unsigned int (*v20) (unsigned short) = v19;
extern unsigned char v23 (signed char, unsigned int, signed int);
extern unsigned char (*v24) (signed char, unsigned int, signed int);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern unsigned int v27 (unsigned int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned short, unsigned char, unsigned int);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v107 = 2;
unsigned short v106 = 6;
unsigned char v105 = 5;

unsigned char v29 (void)
{
{
for (;;) {
unsigned int v110 = 3U;
signed int v109 = 1;
unsigned int v108 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -2;
signed short v113 = 0;
signed short v112 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v117 = 5;
signed short v116 = -3;
unsigned int v115 = 6U;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v118;
unsigned int v119;
signed short v120;
signed short v121;
v118 = v117 - 0;
v119 = v115 + v115;
v120 = 0 + v116;
v121 = v13 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
