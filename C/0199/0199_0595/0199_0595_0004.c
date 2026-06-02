#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed short);
extern unsigned char (*v2) (signed int, signed char, signed short);
extern signed char v3 (unsigned char, signed char, unsigned short, unsigned char);
extern signed char (*v4) (unsigned char, signed char, unsigned short, unsigned char);
extern signed int v5 (signed int, unsigned int, unsigned char, unsigned int);
extern signed int (*v6) (signed int, unsigned int, unsigned char, unsigned int);
extern signed short v7 (unsigned short, signed short, unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, signed short, unsigned short, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v12) (signed int, unsigned char, unsigned int, signed short);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
static signed int v15 (void);
static signed int (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned short v19 (signed char, signed short, signed int);
extern unsigned short (*v20) (signed char, signed short, signed int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
signed char v23 (signed short);
signed char (*v24) (signed short) = v23;
extern signed char v27 (unsigned char, signed char);
extern signed char (*v28) (unsigned char, signed char);
static signed short v29 (void);
static signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = -3;
unsigned char v124 = 2;
signed short v123 = 0;

static signed short v29 (void)
{
{
for (;;) {
signed char v128 = 0;
signed short v127 = 1;
signed char v126 = -4;
trace++;
switch (trace)
{
case 11: 
return v127;
default: abort ();
}
}
}
}

signed char v23 (signed short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 3;
signed char v131 = 2;
unsigned short v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v15 (void)
{
{
for (;;) {
unsigned int v135 = 3U;
unsigned char v134 = 5;
signed char v133 = 0;
trace++;
switch (trace)
{
case 8: 
return -4;
case 10: 
{
signed short v136;
v136 = v29 ();
history[history_index++] = (int)v136;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned char v139 = 3;
unsigned short v138 = 1;
signed short v137 = 0;
trace++;
switch (trace)
{
case 5: 
return 0U;
case 7: 
{
signed int v140;
v140 = v15 ();
history[history_index++] = (int)v140;
}
break;
case 9: 
{
signed int v141;
v141 = v15 ();
history[history_index++] = (int)v141;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}
