#include <stdlib.h>
unsigned short v1 (unsigned short, unsigned char);
unsigned short (*v2) (unsigned short, unsigned char) = v1;
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern unsigned short v9 (unsigned int, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short);
extern unsigned short v11 (unsigned short, signed int);
extern unsigned short (*v12) (unsigned short, signed int);
extern unsigned char v13 (unsigned char, signed int, unsigned short);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern void v21 (unsigned short, signed short, unsigned short);
extern void (*v22) (unsigned short, signed short, unsigned short);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
static unsigned int v27 (signed int, unsigned char, unsigned int, signed short);
static unsigned int (*v28) (signed int, unsigned char, unsigned int, signed short) = v27;
extern signed int v29 (signed int, signed short);
extern signed int (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = -2;
signed int v119 = -4;
unsigned int v118 = 0U;

static unsigned int v27 (signed int v121, unsigned char v122, unsigned int v123, signed short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 1U;
unsigned int v126 = 2U;
unsigned short v125 = 4;
trace++;
switch (trace)
{
case 3: 
return v123;
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned char v130 = 6;
unsigned int v129 = 6U;
unsigned char v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v131, unsigned char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 0U;
unsigned int v134 = 6U;
unsigned short v133 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v136;
unsigned int v137;
v136 = 3 - 0;
v137 = v19 (v136);
history[history_index++] = (int)v137;
}
break;
case 2: 
{
signed int v138;
unsigned char v139;
unsigned int v140;
signed short v141;
unsigned int v142;
v138 = -2 + 1;
v139 = 5 - v132;
v140 = v134 + v135;
v141 = 0 + 3;
v142 = v27 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 4: 
{
signed short v143;
unsigned char v144;
v143 = 2 - -1;
v144 = v5 (v143);
history[history_index++] = (int)v144;
}
break;
case 16: 
return 7;
default: abort ();
}
}
}
}
