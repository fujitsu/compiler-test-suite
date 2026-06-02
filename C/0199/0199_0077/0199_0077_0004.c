#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern void v3 (unsigned int, signed int, unsigned char, signed char);
extern void (*v4) (unsigned int, signed int, unsigned char, signed char);
signed int v5 (unsigned short, unsigned char, unsigned int, signed char);
signed int (*v6) (unsigned short, unsigned char, unsigned int, signed char) = v5;
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (signed short, unsigned int, signed int, signed int);
extern unsigned char (*v14) (signed short, unsigned int, signed int, signed int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
unsigned char v21 (signed short);
unsigned char (*v22) (signed short) = v21;
extern void v23 (unsigned short, signed short, unsigned char, unsigned char);
extern void (*v24) (unsigned short, signed short, unsigned char, unsigned char);
signed short v25 (unsigned int, signed short, unsigned short, unsigned short);
signed short (*v26) (unsigned int, signed short, unsigned short, unsigned short) = v25;
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed int, unsigned short, signed short, unsigned short);
extern unsigned int (*v30) (signed int, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v136 = 0;
signed int v135 = -1;
unsigned char v134 = 7;

signed short v25 (unsigned int v137, signed short v138, unsigned short v139, unsigned short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 2;
unsigned int v142 = 1U;
unsigned int v141 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed short v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed char v147 = -3;
unsigned short v146 = 0;
unsigned char v145 = 5;
trace++;
switch (trace)
{
case 4: 
return 2;
default: abort ();
}
}
}
}

signed int v5 (unsigned short v148, unsigned char v149, unsigned int v150, signed char v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 6U;
signed short v153 = -4;
unsigned short v152 = 6;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}
