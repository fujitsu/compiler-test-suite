#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char, unsigned int, unsigned char);
extern signed int v3 (signed char, signed int);
extern signed int (*v4) (signed char, signed int);
extern signed short v5 (signed short, signed int);
extern signed short (*v6) (signed short, signed int);
extern void v7 (signed char, signed int, signed int);
extern void (*v8) (signed char, signed int, signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
extern signed char v15 (unsigned char, signed short, unsigned int, signed int);
extern signed char (*v16) (unsigned char, signed short, unsigned int, signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
signed char v23 (unsigned short, signed char, signed int);
signed char (*v24) (unsigned short, signed char, signed int) = v23;
extern unsigned int v25 (unsigned char, signed char, signed char, signed char);
extern unsigned int (*v26) (unsigned char, signed char, signed char, signed char);
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = 0;
signed short v119 = -2;
signed int v118 = 1;

unsigned int v29 (void)
{
{
for (;;) {
signed short v123 = 0;
unsigned short v122 = 6;
unsigned char v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned short v124, signed char v125, signed int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 0U;
unsigned short v128 = 0;
signed char v127 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed char v130;
v130 = v27 ();
history[history_index++] = (int)v130;
}
break;
case 11: 
return v125;
default: abort ();
}
}
}
}
