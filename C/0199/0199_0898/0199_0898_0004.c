#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed char v7 (unsigned short, unsigned short);
extern signed char (*v8) (unsigned short, unsigned short);
extern void v9 (signed int, unsigned short, signed char, unsigned char);
extern void (*v10) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v11 (unsigned int, unsigned short, signed int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int, unsigned char);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
void v19 (void);
void (*v20) (void) = v19;
extern void v21 (signed short, signed int, unsigned short);
extern void (*v22) (signed short, signed int, unsigned short);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, signed char);
extern signed int (*v28) (unsigned short, signed char);
extern unsigned short v29 (signed char, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = -2;
signed short v120 = 3;
signed short v119 = 3;

void v23 (void)
{
{
for (;;) {
unsigned int v124 = 7U;
unsigned int v123 = 7U;
unsigned int v122 = 4U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v125;
unsigned short v126;
v125 = v123 + v123;
v126 = v25 (v125);
history[history_index++] = (int)v126;
}
break;
case 4: 
return;
case 10: 
{
unsigned int v127;
unsigned short v128;
v127 = 6U - v123;
v128 = v25 (v127);
history[history_index++] = (int)v128;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned int v131 = 5U;
unsigned int v130 = 4U;
unsigned char v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
