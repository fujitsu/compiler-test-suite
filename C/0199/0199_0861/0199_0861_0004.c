#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern unsigned short v5 (signed char, unsigned int, signed char);
extern unsigned short (*v6) (signed char, unsigned int, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (unsigned int, signed char, unsigned char, signed char);
extern unsigned short (*v10) (unsigned int, signed char, unsigned char, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned char, unsigned short, signed short);
extern void (*v20) (unsigned char, unsigned short, signed short);
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
void v25 (signed short, unsigned int, signed short, unsigned short);
void (*v26) (signed short, unsigned int, signed short, unsigned short) = v25;
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v124 = 0;
signed char v123 = -4;
signed int v122 = 2;

unsigned short v29 (void)
{
{
for (;;) {
unsigned short v127 = 7;
signed int v126 = 2;
unsigned int v125 = 6U;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v128;
v128 = v7 ();
history[history_index++] = (int)v128;
}
break;
case 9: 
{
unsigned int v129;
v129 = v7 ();
history[history_index++] = (int)v129;
}
break;
case 13: 
return v127;
default: abort ();
}
}
}
}

void v25 (signed short v130, unsigned int v131, signed short v132, unsigned short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 5;
signed char v135 = -3;
signed int v134 = -3;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned int v139 = 7U;
signed char v138 = -2;
unsigned short v137 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
