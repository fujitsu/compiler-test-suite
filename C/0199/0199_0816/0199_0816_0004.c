#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern void v3 (signed short, signed char, unsigned int);
extern void (*v4) (signed short, signed char, unsigned int);
extern void v5 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v6) (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
extern void v9 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v10) (unsigned char, unsigned char, unsigned int, unsigned short);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern void v13 (signed int, signed short, signed char);
extern void (*v14) (signed int, signed short, signed char);
static unsigned short v15 (void);
static unsigned short (*v16) (void) = v15;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern void v19 (unsigned int, signed int, signed short);
extern void (*v20) (unsigned int, signed int, signed short);
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
unsigned short v23 (unsigned int, signed int);
unsigned short (*v24) (unsigned int, signed int) = v23;
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed int v29 (signed char, unsigned int, unsigned short);
extern signed int (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = 3;
signed int v121 = 0;
signed int v120 = 0;

unsigned short v23 (unsigned int v123, signed int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 2;
signed short v126 = 3;
unsigned char v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (void)
{
{
for (;;) {
unsigned short v130 = 4;
signed char v129 = -2;
unsigned int v128 = 3U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v131;
unsigned short v132;
v131 = 7 + 0;
v132 = v25 (v131);
history[history_index++] = (int)v132;
}
break;
case 9: 
{
unsigned short v133;
unsigned short v134;
v133 = v130 + 7;
v134 = v25 (v133);
history[history_index++] = (int)v134;
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned short v137 = 4;
unsigned char v136 = 5;
unsigned char v135 = 5;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v138;
v138 = v15 ();
history[history_index++] = (int)v138;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
