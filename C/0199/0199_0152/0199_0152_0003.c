#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
void v3 (signed short);
void (*v4) (signed short) = v3;
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
extern unsigned short v7 (signed int, unsigned int, signed int, unsigned short);
extern unsigned short (*v8) (signed int, unsigned int, signed int, unsigned short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern signed char v11 (signed int, unsigned short, signed char);
extern signed char (*v12) (signed int, unsigned short, signed char);
signed short v13 (unsigned short, unsigned int, signed short);
signed short (*v14) (unsigned short, unsigned int, signed short) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (signed short, signed short);
extern void (*v18) (signed short, signed short);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned char v23 (signed char, unsigned int, signed int);
extern unsigned char (*v24) (signed char, unsigned int, signed int);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern unsigned int v27 (unsigned int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned short, unsigned char, unsigned int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = -3;
signed char v123 = 0;
signed short v122 = -2;

signed short v13 (unsigned short v125, unsigned int v126, signed short v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 4;
signed char v129 = 1;
unsigned char v128 = 7;
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

void v3 (signed short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 3;
signed char v133 = -2;
signed char v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned short v137 = 4;
unsigned char v136 = 2;
signed int v135 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v138;
signed int v139;
v138 = 3 + 3;
v139 = v9 (v138);
history[history_index++] = (int)v139;
}
break;
case 4: 
{
signed char v140;
unsigned int v141;
unsigned int v142;
v140 = -4 - 3;
v141 = 0U + 2U;
v142 = v5 (v140, v141);
history[history_index++] = (int)v142;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
