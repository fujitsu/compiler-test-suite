#include <stdlib.h>
void v3 (unsigned int, unsigned int, unsigned int);
void (*v4) (unsigned int, unsigned int, unsigned int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v8) (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned int v9 (signed int, signed short, unsigned short);
extern unsigned int (*v10) (signed int, signed short, unsigned short);
extern signed char v13 (unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char);
extern signed int v15 (unsigned char, unsigned short, unsigned int);
extern signed int (*v16) (unsigned char, unsigned short, unsigned int);
extern signed int v19 (signed int, signed short, unsigned char, unsigned int);
extern signed int (*v20) (signed int, signed short, unsigned char, unsigned int);
extern signed short v23 (signed short, unsigned int);
extern signed short (*v24) (signed short, unsigned int);
signed char v25 (unsigned short, signed char, unsigned int);
signed char (*v26) (unsigned short, signed char, unsigned int) = v25;
extern unsigned char v27 (signed int, unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, signed int, unsigned short);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v129 = 4;
signed short v128 = -1;
unsigned char v127 = 1;

signed char v25 (unsigned short v130, signed char v131, unsigned int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -4;
unsigned short v134 = 4;
unsigned int v133 = 2U;
trace++;
switch (trace)
{
case 7: 
return v131;
default: abort ();
}
}
}
}

void v3 (unsigned int v136, unsigned int v137, unsigned int v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 7U;
signed int v140 = -1;
unsigned int v139 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
