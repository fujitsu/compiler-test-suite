#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned char v3 (signed int, unsigned int);
unsigned char (*v4) (signed int, unsigned int) = v3;
extern signed int v5 (unsigned char, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char, signed short, unsigned char);
extern unsigned int v7 (unsigned short, signed char, signed short);
extern unsigned int (*v8) (unsigned short, signed char, signed short);
extern unsigned char v9 (signed short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed int v17 (unsigned short, signed char, signed short);
extern signed int (*v18) (unsigned short, signed char, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short, signed int);
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern signed short v29 (unsigned char, signed short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -2;
signed char v126 = -1;
signed int v125 = -2;

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v130 = 1;
unsigned short v129 = 6;
unsigned short v128 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v131, unsigned int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -3;
unsigned short v134 = 5;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
case 3: 
{
signed short v136;
unsigned int v137;
unsigned char v138;
v136 = -2 - v135;
v137 = 0U - v133;
v138 = v9 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
