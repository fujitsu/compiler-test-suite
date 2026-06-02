#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned short v3 (signed char, signed short, signed int, unsigned short);
extern unsigned short (*v4) (signed char, signed short, signed int, unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed short, signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed short, signed int, unsigned int, unsigned char);
extern signed int v19 (signed int, unsigned int, signed int);
extern signed int (*v20) (signed int, unsigned int, signed int);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern signed int v23 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v24) (unsigned char, unsigned int, signed short, unsigned short);
signed char v25 (unsigned char, unsigned char, signed short);
signed char (*v26) (unsigned char, unsigned char, signed short) = v25;
unsigned char v27 (unsigned short, unsigned int);
unsigned char (*v28) (unsigned short, unsigned int) = v27;
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v131 = 2;
unsigned int v130 = 4U;
signed char v129 = -2;

unsigned char v27 (unsigned short v132, unsigned int v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 2;
signed char v135 = 0;
signed char v134 = -1;
trace++;
switch (trace)
{
case 6: 
return 7;
default: abort ();
}
}
}
}

signed char v25 (unsigned char v137, unsigned char v138, signed short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 4;
signed char v141 = -2;
unsigned short v140 = 6;
trace++;
switch (trace)
{
case 1: 
return v141;
default: abort ();
}
}
}
}
