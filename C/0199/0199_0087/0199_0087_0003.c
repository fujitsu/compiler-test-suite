#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, unsigned char);
extern void (*v4) (signed short, unsigned char);
extern void v5 (signed short, unsigned short, unsigned char, signed char);
extern void (*v6) (signed short, unsigned short, unsigned char, signed char);
extern unsigned short v7 (signed char, unsigned char, unsigned int, signed char);
extern unsigned short (*v8) (signed char, unsigned char, unsigned int, signed char);
extern unsigned char v9 (unsigned char, unsigned int, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned int, unsigned char, unsigned int);
extern signed char v11 (unsigned short, signed int);
extern signed char (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
unsigned short v15 (unsigned short, signed char);
unsigned short (*v16) (unsigned short, signed char) = v15;
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
void v19 (void);
void (*v20) (void) = v19;
extern signed int v21 (unsigned char, unsigned short, signed short);
extern signed int (*v22) (unsigned char, unsigned short, signed short);
extern unsigned int v23 (signed int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short);
extern void v25 (unsigned int, signed short);
extern void (*v26) (unsigned int, signed short);
extern unsigned short v27 (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v28) (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v114 = 2;
unsigned int v113 = 6U;
unsigned int v112 = 3U;

void v19 (void)
{
{
for (;;) {
unsigned char v117 = 3;
unsigned char v116 = 2;
signed char v115 = 3;
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
signed int v122 = -1;
unsigned short v121 = 0;
unsigned int v120 = 4U;
trace++;
switch (trace)
{
case 3: 
{
signed int v123;
unsigned short v124;
unsigned int v125;
v123 = v122 - v122;
v124 = 6 + 3;
v125 = v23 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 5: 
{
signed int v126;
unsigned short v127;
unsigned int v128;
v126 = v122 + 1;
v127 = v121 - 6;
v128 = v23 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return v121;
default: abort ();
}
}
}
}
