#include <stdlib.h>
extern signed int v3 (unsigned short, signed int, signed short);
extern signed int (*v4) (unsigned short, signed int, signed short);
signed short v5 (unsigned int, signed int, unsigned short);
signed short (*v6) (unsigned int, signed int, unsigned short) = v5;
extern unsigned int v7 (unsigned short, unsigned short, signed int, signed short);
extern unsigned int (*v8) (unsigned short, unsigned short, signed int, signed short);
extern unsigned int v11 (signed short, signed char, signed char, unsigned int);
extern unsigned int (*v12) (signed short, signed char, signed char, unsigned int);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern unsigned char v15 (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed short, signed char, unsigned char);
extern unsigned int (*v18) (signed short, signed char, unsigned char);
extern signed int v19 (unsigned int, signed char);
extern signed int (*v20) (unsigned int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
extern signed short v25 (unsigned int, unsigned short, unsigned int);
extern signed short (*v26) (unsigned int, unsigned short, unsigned int);
unsigned char v27 (unsigned char, unsigned int);
unsigned char (*v28) (unsigned char, unsigned int) = v27;
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v130 = 0U;
unsigned short v129 = 6;
unsigned char v128 = 5;

unsigned char v27 (unsigned char v131, unsigned int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 7U;
signed int v134 = -3;
unsigned short v133 = 3;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed short v5 (unsigned int v136, signed int v137, unsigned short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 1;
signed int v140 = 1;
signed char v139 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
