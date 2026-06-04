#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned short v3 (unsigned short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (unsigned short, signed int, unsigned short, signed int);
extern unsigned int v5 (unsigned int, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned int, unsigned short, signed char, unsigned char);
extern signed char v7 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned int, unsigned short);
extern unsigned short v9 (unsigned char, unsigned short, signed short);
extern unsigned short (*v10) (unsigned char, unsigned short, signed short);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (unsigned short, unsigned int, unsigned short, signed char);
extern signed short (*v20) (unsigned short, unsigned int, unsigned short, signed char);
extern signed int v21 (unsigned char, signed short, unsigned int, signed short);
extern signed int (*v22) (unsigned char, signed short, unsigned int, signed short);
extern unsigned int v23 (unsigned char, unsigned char);
extern unsigned int (*v24) (unsigned char, unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
void v29 (signed short, unsigned short, signed char, unsigned short);
void (*v30) (signed short, unsigned short, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 7U;
signed int v114 = -3;
signed short v113 = 2;

void v29 (signed short v116, unsigned short v117, signed char v118, unsigned short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 2;
signed char v121 = -2;
unsigned int v120 = 2U;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed char v125 = -2;
unsigned short v124 = 0;
unsigned int v123 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v126;
v126 = 2 + 1;
v27 (v126);
}
break;
case 8: 
return 2;
case 9: 
{
unsigned int v127;
unsigned short v128;
signed char v129;
unsigned char v130;
unsigned int v131;
v127 = 6U + v123;
v128 = 5 + 0;
v129 = v125 + v125;
v130 = 7 - 1;
v131 = v5 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}
