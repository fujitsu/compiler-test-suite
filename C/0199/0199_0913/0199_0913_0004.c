#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (unsigned short, signed int, unsigned short, signed int);
unsigned int v5 (unsigned int, unsigned short, signed char, unsigned char);
unsigned int (*v6) (unsigned int, unsigned short, signed char, unsigned char) = v5;
signed char v7 (unsigned char, unsigned short, unsigned int, unsigned short);
signed char (*v8) (unsigned char, unsigned short, unsigned int, unsigned short) = v7;
extern unsigned short v9 (unsigned char, unsigned short, signed short);
extern unsigned short (*v10) (unsigned char, unsigned short, signed short);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (unsigned short, unsigned int, unsigned short, signed char);
extern signed short (*v20) (unsigned short, unsigned int, unsigned short, signed char);
extern signed int v21 (unsigned char, signed short, unsigned int, signed short);
extern signed int (*v22) (unsigned char, signed short, unsigned int, signed short);
extern unsigned int v23 (unsigned char, unsigned char);
extern unsigned int (*v24) (unsigned char, unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (signed short, unsigned short, signed char, unsigned short);
extern void (*v30) (signed short, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = 3;
signed int v133 = 0;
unsigned char v132 = 1;

signed char v7 (unsigned char v135, unsigned short v136, unsigned int v137, unsigned short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -1;
signed short v140 = -1;
unsigned int v139 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v142, unsigned short v143, signed char v144, unsigned char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 3;
signed int v147 = -3;
unsigned short v146 = 5;
trace++;
switch (trace)
{
case 10: 
return v142;
default: abort ();
}
}
}
}
