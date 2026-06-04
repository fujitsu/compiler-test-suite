#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed short, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char);
signed char v5 (unsigned short, unsigned short);
signed char (*v6) (unsigned short, unsigned short) = v5;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern void v11 (signed int, unsigned short, signed short, signed char);
extern void (*v12) (signed int, unsigned short, signed short, signed char);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned char v15 (signed int, signed char, unsigned short);
extern unsigned char (*v16) (signed int, signed char, unsigned short);
extern void v17 (unsigned short, signed char, unsigned short, signed int);
extern void (*v18) (unsigned short, signed char, unsigned short, signed int);
void v19 (signed int, signed int, signed short, signed int);
void (*v20) (signed int, signed int, signed short, signed int) = v19;
extern unsigned int v21 (signed char, unsigned char, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed short);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed int v25 (signed char, signed int, signed short);
extern signed int (*v26) (signed char, signed int, signed short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v136 = 2;
signed char v135 = -3;
signed short v134 = 2;

void v19 (signed int v137, signed int v138, signed short v139, signed int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 3;
signed int v142 = 2;
unsigned int v141 = 3U;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

signed char v5 (unsigned short v144, unsigned short v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 0;
unsigned short v147 = 1;
signed int v146 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
