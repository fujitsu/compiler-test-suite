#include <stdlib.h>
extern signed short v1 (signed char, unsigned int, unsigned short);
extern signed short (*v2) (signed char, unsigned int, unsigned short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned char v5 (signed char, signed short);
extern unsigned char (*v6) (signed char, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned char v9 (signed int, unsigned int);
unsigned char (*v10) (signed int, unsigned int) = v9;
extern unsigned short v11 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned short, unsigned int);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern signed int v15 (signed short, signed short, unsigned char, signed char);
extern signed int (*v16) (signed short, signed short, unsigned char, signed char);
extern signed short v17 (signed short, unsigned char, signed char);
extern signed short (*v18) (signed short, unsigned char, signed char);
extern unsigned char v19 (unsigned char, unsigned char, signed short);
extern unsigned char (*v20) (unsigned char, unsigned char, signed short);
extern unsigned int v21 (unsigned int);
extern unsigned int (*v22) (unsigned int);
void v23 (unsigned int, signed int, signed short, signed short);
void (*v24) (unsigned int, signed int, signed short, signed short) = v23;
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = 2;
signed char v133 = -1;
unsigned short v132 = 3;

void v23 (unsigned int v135, signed int v136, signed short v137, signed short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -2;
signed char v140 = -4;
signed short v139 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v142, unsigned int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = -2;
signed short v145 = 3;
unsigned char v144 = 3;
trace++;
switch (trace)
{
case 7: 
return v144;
default: abort ();
}
}
}
}
