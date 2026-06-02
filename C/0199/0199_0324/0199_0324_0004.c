#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern signed char v3 (signed int, signed short);
extern signed char (*v4) (signed int, signed short);
signed short v5 (signed short, signed char, unsigned char);
signed short (*v6) (signed short, signed char, unsigned char) = v5;
extern signed int v7 (unsigned short, signed char, signed char);
extern signed int (*v8) (unsigned short, signed char, signed char);
extern unsigned char v11 (signed char, signed char);
extern unsigned char (*v12) (signed char, signed char);
extern unsigned short v13 (signed int, signed char, unsigned int);
extern unsigned short (*v14) (signed int, signed char, unsigned int);
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern void v19 (unsigned char, signed short);
extern void (*v20) (unsigned char, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
void v23 (signed char, signed char);
void (*v24) (signed char, signed char) = v23;
extern unsigned char v25 (signed short, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned int, unsigned int);
extern signed int v27 (signed char, unsigned char);
extern signed int (*v28) (signed char, unsigned char);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v126 = 0;
unsigned char v125 = 4;
unsigned int v124 = 0U;

void v23 (signed char v127, signed char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 1;
signed int v130 = -1;
unsigned char v129 = 4;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
unsigned char v134 = 4;
unsigned int v133 = 4U;
unsigned char v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v135, signed char v136, unsigned char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 3;
signed short v139 = 3;
unsigned int v138 = 1U;
trace++;
switch (trace)
{
case 7: 
{
signed int v141;
v141 = 1 + -2;
v29 (v141);
}
break;
case 9: 
{
unsigned short v142;
signed char v143;
signed char v144;
signed int v145;
v142 = 4 + 5;
v143 = -1 - v140;
v144 = v136 - -2;
v145 = v7 (v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
