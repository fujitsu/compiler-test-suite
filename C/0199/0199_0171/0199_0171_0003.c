#include <stdlib.h>
void v1 (unsigned short);
void (*v2) (unsigned short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern unsigned int v17 (unsigned short, unsigned char, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned char, signed short, unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v25 (signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed int);
extern unsigned char v27 (signed char, signed short, unsigned int);
extern unsigned char (*v28) (signed char, signed short, unsigned int);
unsigned int v29 (signed short, unsigned char);
unsigned int (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v114 = 1;
signed char v113 = 2;
unsigned char v112 = 4;

unsigned int v29 (signed short v115, unsigned char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 7;
signed int v118 = -3;
signed short v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 0;
unsigned char v122 = 3;
signed int v121 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v124;
v124 = v3 ();
history[history_index++] = (int)v124;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
