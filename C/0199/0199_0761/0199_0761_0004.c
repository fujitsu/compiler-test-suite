#include <stdlib.h>
extern signed char v1 (unsigned short, signed short, unsigned short);
extern signed char (*v2) (unsigned short, signed short, unsigned short);
extern unsigned short v3 (unsigned char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, unsigned char, signed char, signed short);
extern signed int v5 (signed short, unsigned char, unsigned char);
extern signed int (*v6) (signed short, unsigned char, unsigned char);
extern void v9 (signed char);
extern void (*v10) (signed char);
signed short v11 (signed char, signed char, signed int);
signed short (*v12) (signed char, signed char, signed int) = v11;
void v13 (unsigned char);
void (*v14) (unsigned char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
extern signed char v21 (unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, signed char, signed short);
extern void v23 (unsigned char, unsigned int, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned int, signed int, unsigned int);
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v125 = 2;
unsigned char v124 = 4;
signed short v123 = -3;

signed char v25 (signed char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 6;
unsigned int v128 = 4U;
signed int v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 1;
signed short v132 = -1;
signed int v131 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed char v134;
v134 = v29 ();
history[history_index++] = (int)v134;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v11 (signed char v135, signed char v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -2;
signed short v139 = 1;
signed short v138 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
