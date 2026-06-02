#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed short v3 (signed char, unsigned int, unsigned int, signed short);
extern signed short (*v4) (signed char, unsigned int, unsigned int, signed short);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
static void v7 (unsigned int, unsigned int);
static void (*v8) (unsigned int, unsigned int) = v7;
signed char v11 (unsigned short, signed short);
signed char (*v12) (unsigned short, signed short) = v11;
extern unsigned char v13 (signed short, signed short);
extern unsigned char (*v14) (signed short, signed short);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
extern unsigned short v19 (unsigned char, signed int, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed int, signed char, unsigned char);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned char v23 (unsigned short, unsigned int, signed int, unsigned int);
extern unsigned char (*v24) (unsigned short, unsigned int, signed int, unsigned int);
extern signed short v25 (signed short, unsigned int, signed int, unsigned char);
extern signed short (*v26) (signed short, unsigned int, signed int, unsigned char);
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
extern signed char v29 (unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v128 = 1;
unsigned int v127 = 2U;
signed char v126 = 0;

signed int v21 (void)
{
{
for (;;) {
signed short v131 = 0;
signed short v130 = -2;
unsigned int v129 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 6;
unsigned char v135 = 2;
signed int v134 = -3;
trace++;
switch (trace)
{
case 2: 
return 0;
case 10: 
{
unsigned int v137;
unsigned int v138;
v137 = 3U - 3U;
v138 = 5U - 0U;
v7 (v137, v138);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

static void v7 (unsigned int v139, unsigned int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = -4;
signed int v142 = -3;
unsigned int v141 = 0U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}
