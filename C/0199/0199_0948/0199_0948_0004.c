#include <stdlib.h>
extern unsigned short v3 (unsigned int, unsigned char, signed short);
extern unsigned short (*v4) (unsigned int, unsigned char, signed short);
extern unsigned int v5 (signed char, signed int);
extern unsigned int (*v6) (signed char, signed int);
extern void v7 (signed char);
extern void (*v8) (signed char);
extern signed short v9 (signed char, signed short, unsigned int, unsigned char);
extern signed short (*v10) (signed char, signed short, unsigned int, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned short v15 (unsigned char, signed int, signed short, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed short, signed int);
signed short v17 (unsigned short);
signed short (*v18) (unsigned short) = v17;
signed int v19 (unsigned char, signed char, signed int);
signed int (*v20) (unsigned char, signed char, signed int) = v19;
unsigned char v21 (unsigned short, signed int, unsigned char, signed short);
unsigned char (*v22) (unsigned short, signed int, unsigned char, signed short) = v21;
signed char v23 (void);
signed char (*v24) (void) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned short, unsigned short, signed short);
extern unsigned int v29 (signed int, signed char, unsigned int, signed int);
extern unsigned int (*v30) (signed int, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v127 = 2;
signed int v126 = -4;
unsigned int v125 = 0U;

signed char v23 (void)
{
{
for (;;) {
signed char v130 = 3;
signed short v129 = -1;
signed char v128 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned short v131, signed int v132, unsigned char v133, signed short v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = 2;
signed short v136 = -3;
signed int v135 = -3;
trace++;
switch (trace)
{
case 8: 
return 6;
case 10: 
return v133;
default: abort ();
}
}
}
}

signed int v19 (unsigned char v138, signed char v139, signed int v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -1;
signed short v142 = 2;
unsigned short v141 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed char v144;
v144 = v25 ();
history[history_index++] = (int)v144;
}
break;
case 3: 
{
signed char v145;
v145 = v25 ();
history[history_index++] = (int)v145;
}
break;
case 5: 
return v140;
default: abort ();
}
}
}
}

signed short v17 (unsigned short v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
unsigned short v149 = 0;
unsigned int v148 = 2U;
unsigned short v147 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
