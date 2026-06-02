#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, signed short);
extern unsigned short (*v8) (signed short, signed short);
void v9 (signed char, unsigned int);
void (*v10) (signed char, unsigned int) = v9;
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
signed char v13 (void);
signed char (*v14) (void) = v13;
signed short v15 (signed char, unsigned int, signed char);
signed short (*v16) (signed char, unsigned int, signed char) = v15;
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern unsigned short v19 (unsigned char, unsigned char, signed char);
extern unsigned short (*v20) (unsigned char, unsigned char, signed char);
extern signed int v21 (unsigned char, unsigned int, signed int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, signed int, signed short);
extern signed char v23 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v24) (unsigned short, signed short, unsigned char, unsigned char);
extern unsigned int v25 (signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed char v29 (signed short, signed char, unsigned int, signed short);
extern signed char (*v30) (signed short, signed char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 4;
signed int v132 = 2;
signed char v131 = -4;

signed short v15 (signed char v134, unsigned int v135, signed char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 1;
signed short v138 = -1;
signed int v137 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed char v142 = 0;
unsigned int v141 = 2U;
unsigned short v140 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v143;
signed int v144;
v143 = 1 + 2;
v144 = v27 (v143);
history[history_index++] = (int)v144;
}
break;
case 3: 
return v142;
default: abort ();
}
}
}
}

void v9 (signed char v145, unsigned int v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 2;
signed char v148 = 1;
signed short v147 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
