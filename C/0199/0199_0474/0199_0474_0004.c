#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v2) (unsigned char, unsigned char, unsigned char, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, unsigned short, signed short);
extern unsigned char (*v6) (unsigned char, unsigned short, signed short);
extern signed short v7 (signed char, unsigned char);
extern signed short (*v8) (signed char, unsigned char);
extern signed char v9 (unsigned short, signed int, signed short);
extern signed char (*v10) (unsigned short, signed int, signed short);
unsigned short v11 (unsigned int, unsigned short, signed short);
unsigned short (*v12) (unsigned int, unsigned short, signed short) = v11;
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed short v19 (unsigned int, signed char);
extern signed short (*v20) (unsigned int, signed char);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
void v25 (unsigned int);
void (*v26) (unsigned int) = v25;
extern signed short v27 (signed int, signed char);
extern signed short (*v28) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v127 = -4;
signed short v126 = -2;
unsigned char v125 = 6;

void v25 (unsigned int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 1U;
unsigned short v130 = 2;
unsigned short v129 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
signed char v134 = 2;
signed char v133 = 3;
signed short v132 = 1;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v135, unsigned short v136, signed short v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 0;
unsigned char v139 = 5;
signed int v138 = 3;
trace++;
switch (trace)
{
case 8: 
return v136;
default: abort ();
}
}
}
}
