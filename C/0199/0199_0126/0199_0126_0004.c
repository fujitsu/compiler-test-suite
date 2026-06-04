#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned int, unsigned short, signed char);
unsigned char v5 (signed int);
unsigned char (*v6) (signed int) = v5;
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (unsigned char, signed short, signed short, unsigned short);
extern unsigned short (*v14) (unsigned char, signed short, signed short, unsigned short);
void v15 (unsigned char, signed int, signed char);
void (*v16) (unsigned char, signed int, signed char) = v15;
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed short v27 (signed int, signed int);
extern signed short (*v28) (signed int, signed int);
extern unsigned int v29 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v30) (signed short, unsigned char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = 3;
signed char v119 = -4;
unsigned char v118 = 6;

void v15 (unsigned char v121, signed int v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -1;
unsigned char v125 = 3;
unsigned short v124 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v127;
v127 = v25 ();
history[history_index++] = (int)v127;
}
break;
case 3: 
{
unsigned int v128;
v128 = v11 ();
history[history_index++] = (int)v128;
}
break;
case 5: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 1;
signed char v131 = 2;
unsigned short v130 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
