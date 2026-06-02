#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
static unsigned char v3 (signed char, unsigned short, unsigned char, unsigned int);
static unsigned char (*v4) (signed char, unsigned short, unsigned char, unsigned int) = v3;
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
extern signed int v7 (signed char, unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (signed char, unsigned char, unsigned short, unsigned int);
extern unsigned short v9 (unsigned int, signed short, unsigned int, signed short);
extern unsigned short (*v10) (unsigned int, signed short, unsigned int, signed short);
unsigned char v11 (signed short, unsigned int);
unsigned char (*v12) (signed short, unsigned int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned int, unsigned int);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
extern unsigned short v23 (unsigned int, signed char);
extern unsigned short (*v24) (unsigned int, signed char);
extern unsigned short v25 (signed int, unsigned int, unsigned char, signed short);
extern unsigned short (*v26) (signed int, unsigned int, unsigned char, signed short);
unsigned char v27 (signed short, unsigned char, signed short, unsigned int);
unsigned char (*v28) (signed short, unsigned char, signed short, unsigned int) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = 2;
unsigned short v121 = 6;
signed short v120 = -1;

unsigned char v27 (signed short v123, unsigned char v124, signed short v125, unsigned int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 0U;
signed short v128 = -1;
unsigned char v127 = 3;
trace++;
switch (trace)
{
case 2: 
return v124;
case 7: 
return v127;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v130, unsigned int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 2;
signed int v133 = -1;
signed short v132 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v3 (signed char v135, unsigned short v136, unsigned char v137, unsigned int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -1;
unsigned char v140 = 2;
signed short v139 = 3;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v142;
v142 = 7 - v136;
v15 (v142);
}
break;
case 9: 
{
unsigned short v143;
v143 = 1 + v136;
v15 (v143);
}
break;
case 13: 
return v137;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed int v146 = -3;
signed int v145 = -1;
unsigned int v144 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v147;
v147 = 1 + 0;
v15 (v147);
}
break;
case 4: 
{
signed char v148;
unsigned short v149;
unsigned char v150;
unsigned int v151;
unsigned char v152;
v148 = -4 + 3;
v149 = 4 - 3;
v150 = 3 + 3;
v151 = 5U + 5U;
v152 = v3 (v148, v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
