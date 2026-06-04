#include <stdlib.h>
extern void v1 (unsigned char, signed int, unsigned short, signed short);
extern void (*v2) (unsigned char, signed int, unsigned short, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned char v5 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, unsigned char);
void v7 (signed short, signed short, unsigned char, unsigned short);
void (*v8) (signed short, signed short, unsigned char, unsigned short) = v7;
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed int);
extern void (*v16) (unsigned char, signed int);
void v17 (unsigned char, unsigned int, unsigned int, signed char);
void (*v18) (unsigned char, unsigned int, unsigned int, signed char) = v17;
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned int v21 (unsigned char, signed char);
extern unsigned int (*v22) (unsigned char, signed char);
extern void v25 (unsigned short, unsigned short, signed int, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
unsigned short v29 (signed char, signed short, signed int);
unsigned short (*v30) (signed char, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v132 = 1;
unsigned int v131 = 4U;
unsigned short v130 = 0;

unsigned short v29 (signed char v133, signed short v134, signed int v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -3;
unsigned short v137 = 2;
signed char v136 = -4;
trace++;
switch (trace)
{
case 4: 
return v137;
case 6: 
return 0;
case 10: 
return v137;
default: abort ();
}
}
}
}

void v17 (unsigned char v139, unsigned int v140, unsigned int v141, signed char v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 4;
unsigned short v144 = 6;
signed int v143 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v146, signed short v147, unsigned char v148, unsigned short v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 6;
unsigned char v151 = 7;
signed short v150 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
