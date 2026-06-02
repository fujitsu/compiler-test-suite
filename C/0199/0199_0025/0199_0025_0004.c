#include <stdlib.h>
extern void v3 (signed char, signed int, signed short);
extern void (*v4) (signed char, signed int, signed short);
extern signed char v5 (unsigned short, signed char, unsigned char, signed char);
extern signed char (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern void v9 (signed int, signed short, unsigned char);
extern void (*v10) (signed int, signed short, unsigned char);
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (unsigned short, unsigned char, unsigned int);
extern signed short (*v16) (unsigned short, unsigned char, unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed short);
extern unsigned char (*v18) (signed char, unsigned short, signed short);
unsigned short v19 (signed char);
unsigned short (*v20) (signed char) = v19;
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern signed char v23 (unsigned char, signed int, signed int);
extern signed char (*v24) (unsigned char, signed int, signed int);
signed short v25 (signed short);
signed short (*v26) (signed short) = v25;
extern signed short v27 (unsigned short, unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int, signed int, unsigned int);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = 2;
unsigned short v133 = 2;
unsigned char v132 = 2;

signed short v25 (signed short v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = -4;
unsigned char v137 = 7;
signed short v136 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 3;
signed int v141 = 3;
signed int v140 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v143)
{
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 4U;
signed char v145 = -2;
signed char v144 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v147;
signed char v148;
signed char v149;
v147 = 2 + 6;
v148 = -1 + -4;
v149 = v21 (v147, v148);
history[history_index++] = (int)v149;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}
