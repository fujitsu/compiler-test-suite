#include <stdlib.h>
extern signed char v1 (signed short, unsigned char, signed char);
extern signed char (*v2) (signed short, unsigned char, signed char);
extern unsigned char v3 (signed int, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char);
extern unsigned char v5 (unsigned short, signed short, signed char);
extern unsigned char (*v6) (unsigned short, signed short, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern void v11 (signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed short, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed short v15 (signed char, signed short, unsigned char);
extern signed short (*v16) (signed char, signed short, unsigned char);
static signed char v17 (unsigned short);
static signed char (*v18) (unsigned short) = v17;
extern signed short v19 (unsigned short, signed char, signed char, unsigned int);
extern signed short (*v20) (unsigned short, signed char, signed char, unsigned int);
extern signed short v21 (signed char, signed int, unsigned char);
extern signed short (*v22) (signed char, signed int, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (unsigned int);
extern signed short (*v28) (unsigned int);
extern signed char v29 (unsigned short, unsigned char, signed int);
extern signed char (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = -3;
signed short v129 = 2;
unsigned char v128 = 3;

static signed char v17 (unsigned short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 7U;
unsigned int v133 = 3U;
signed char v132 = -4;
trace++;
switch (trace)
{
case 9: 
return v132;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned short v137 = 1;
unsigned int v136 = 6U;
signed short v135 = 1;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v138;
signed char v139;
v138 = 0 - v137;
v139 = v17 (v138);
history[history_index++] = (int)v139;
}
break;
case 10: 
{
unsigned short v140;
signed char v141;
v140 = 3 + 4;
v141 = v17 (v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
