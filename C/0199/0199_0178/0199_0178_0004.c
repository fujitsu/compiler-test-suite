#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (signed char, signed short, signed char, unsigned short);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned short);
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
extern unsigned short v9 (unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char);
extern unsigned char v11 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v12) (signed char, unsigned char, unsigned int, unsigned int);
signed char v13 (signed char, signed short, signed short);
signed char (*v14) (signed char, signed short, signed short) = v13;
extern signed char v15 (signed int, unsigned short);
extern signed char (*v16) (signed int, unsigned short);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
unsigned int v25 (unsigned short, signed int);
unsigned int (*v26) (unsigned short, signed int) = v25;
extern unsigned char v27 (signed short, signed int);
extern unsigned char (*v28) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v126 = -1;
signed int v125 = 1;
unsigned int v124 = 7U;

unsigned int v25 (unsigned short v127, signed int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 7;
unsigned short v130 = 3;
unsigned char v129 = 1;
trace++;
switch (trace)
{
case 9: 
return 2U;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v134 = 2;
unsigned int v133 = 4U;
unsigned short v132 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v135, signed short v136, signed short v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 2;
unsigned char v139 = 0;
signed char v138 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
