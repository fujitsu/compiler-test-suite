#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int, signed int);
extern unsigned short (*v2) (unsigned int, signed int, signed int);
extern unsigned char v3 (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned char, signed char, unsigned short, unsigned int);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned char v7 (unsigned short, unsigned char);
unsigned char (*v8) (unsigned short, unsigned char) = v7;
extern signed int v9 (signed char, unsigned short, signed char, unsigned short);
extern signed int (*v10) (signed char, unsigned short, signed char, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned char v17 (unsigned int, unsigned int);
unsigned char (*v18) (unsigned int, unsigned int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (signed short, unsigned int, signed int, signed char);
extern unsigned int (*v28) (signed short, unsigned int, signed int, signed char);
extern unsigned int v29 (unsigned char, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v127 = 0;
signed short v126 = 3;
signed char v125 = -3;

unsigned char v17 (unsigned int v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 2;
signed char v131 = -1;
signed int v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 2;
unsigned short v136 = 2;
unsigned char v135 = 4;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v138;
v138 = v11 ();
history[history_index++] = (int)v138;
}
break;
case 11: 
return 1;
case 13: 
return v134;
default: abort ();
}
}
}
}
