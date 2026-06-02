#include <stdlib.h>
extern void v3 (unsigned int, signed int, unsigned int);
extern void (*v4) (unsigned int, signed int, unsigned int);
extern unsigned int v5 (unsigned char, signed short, signed int, signed char);
extern unsigned int (*v6) (unsigned char, signed short, signed int, signed char);
extern signed short v7 (unsigned int, signed int, signed short, signed int);
extern signed short (*v8) (unsigned int, signed int, signed short, signed int);
extern unsigned char v9 (signed int, signed char, unsigned char);
extern unsigned char (*v10) (signed int, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
extern signed short v19 (unsigned short, signed short, unsigned char);
extern signed short (*v20) (unsigned short, signed short, unsigned char);
extern signed char v21 (signed char, unsigned int, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned int, unsigned short, signed short);
extern signed int v23 (signed int, unsigned int, signed char, signed int);
extern signed int (*v24) (signed int, unsigned int, signed char, signed int);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned short v27 (signed int, signed char, signed int);
extern unsigned short (*v28) (signed int, signed char, signed int);
extern signed char v29 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v111 = 6;
signed int v110 = -3;
signed short v109 = -1;

unsigned short v25 (void)
{
{
for (;;) {
signed int v114 = -1;
unsigned short v113 = 6;
signed short v112 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v115;
signed short v116;
unsigned char v117;
signed short v118;
v115 = 3 - 1;
v116 = v112 - 2;
v117 = 5 - 2;
v118 = v19 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
{
unsigned short v119;
signed short v120;
unsigned char v121;
signed short v122;
v119 = 4 + 1;
v120 = v112 - v112;
v121 = 0 + 2;
v122 = v19 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned char v125 = 5;
signed char v124 = 3;
unsigned short v123 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
