#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed char, signed char);
extern unsigned short (*v2) (unsigned int, signed char, signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned char, signed char);
extern void (*v10) (unsigned int, unsigned char, signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (unsigned char, signed int, unsigned short, unsigned int);
extern signed short (*v14) (unsigned char, signed int, unsigned short, unsigned int);
signed char v15 (unsigned short);
signed char (*v16) (unsigned short) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, unsigned char, unsigned short, signed short);
extern signed char (*v20) (signed int, unsigned char, unsigned short, signed short);
extern void v21 (signed char, unsigned int, unsigned short);
extern void (*v22) (signed char, unsigned int, unsigned short);
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
void v27 (signed short, unsigned int);
void (*v28) (signed short, unsigned int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = -2;
unsigned int v121 = 5U;
signed int v120 = -4;

void v27 (signed short v123, unsigned int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 2;
signed char v126 = -4;
signed char v125 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed short v128;
v128 = v17 ();
history[history_index++] = (int)v128;
}
break;
case 8: 
{
signed short v129;
v129 = v17 ();
history[history_index++] = (int)v129;
}
break;
case 10: 
{
signed short v130;
v130 = v17 ();
history[history_index++] = (int)v130;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v15 (unsigned short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 7;
signed int v133 = 1;
unsigned short v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
