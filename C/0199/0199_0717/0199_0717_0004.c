#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
unsigned int v5 (signed int, signed char, unsigned int, signed int);
unsigned int (*v6) (signed int, signed char, unsigned int, signed int) = v5;
extern signed int v7 (signed int, unsigned short, unsigned int);
extern signed int (*v8) (signed int, unsigned short, unsigned int);
extern unsigned int v9 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int, unsigned int);
extern unsigned short v11 (unsigned char, signed short, signed int, unsigned short);
extern unsigned short (*v12) (unsigned char, signed short, signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (unsigned short, unsigned int);
extern unsigned short (*v20) (unsigned short, unsigned int);
extern signed short v21 (void);
extern signed short (*v22) (void);
static signed int v23 (unsigned char, signed char);
static signed int (*v24) (unsigned char, signed char) = v23;
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
extern signed int v29 (signed char, unsigned short, unsigned short);
extern signed int (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v128 = -1;
signed int v127 = 2;
unsigned short v126 = 7;

static signed int v23 (unsigned char v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 6;
unsigned char v132 = 1;
signed char v131 = 2;
trace++;
switch (trace)
{
case 10: 
return -4;
default: abort ();
}
}
}
}

unsigned int v5 (signed int v134, signed char v135, unsigned int v136, signed int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 7;
signed short v139 = 2;
unsigned int v138 = 6U;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v141;
signed char v142;
signed int v143;
v141 = 6 + v140;
v142 = -3 + -4;
v143 = v23 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v146 = 3U;
unsigned char v145 = 3;
unsigned int v144 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
