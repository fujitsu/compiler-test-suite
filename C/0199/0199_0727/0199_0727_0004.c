#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int v5 (unsigned int, unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned char, unsigned short);
extern signed short v7 (unsigned short, unsigned char, signed short, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed short, signed int);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned char v11 (unsigned int, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed int, signed int);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned int v15 (signed char, signed short, unsigned int);
extern unsigned int (*v16) (signed char, signed short, unsigned int);
extern void v17 (unsigned short, unsigned int, signed int, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed int, unsigned short);
void v19 (unsigned char, signed char, signed int);
void (*v20) (unsigned char, signed char, signed int) = v19;
signed char v21 (unsigned int, unsigned char, unsigned char);
signed char (*v22) (unsigned int, unsigned char, unsigned char) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern signed short v29 (unsigned int, unsigned short, signed short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v132 = 4U;
unsigned int v131 = 2U;
signed int v130 = 1;

signed char v21 (unsigned int v133, unsigned char v134, unsigned char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 1U;
signed short v137 = -1;
unsigned char v136 = 5;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

void v19 (unsigned char v139, signed char v140, signed int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = 0;
unsigned short v143 = 2;
signed char v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v147 = 0;
signed short v146 = 3;
signed char v145 = -2;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v148;
unsigned int v149;
signed int v150;
unsigned short v151;
v148 = 1 + 6;
v149 = 3U - 2U;
v150 = 3 - -1;
v151 = 6 + 7;
v17 (v148, v149, v150, v151);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
