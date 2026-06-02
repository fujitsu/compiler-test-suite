#include <stdlib.h>
unsigned short v3 (signed char, signed short);
unsigned short (*v4) (signed char, signed short) = v3;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned char v11 (signed char, signed char, unsigned short, unsigned char);
extern unsigned char (*v12) (signed char, signed char, unsigned short, unsigned char);
extern signed char v13 (signed short, unsigned short, unsigned int);
extern signed char (*v14) (signed short, unsigned short, unsigned int);
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
extern void v17 (signed char, unsigned int, signed short);
extern void (*v18) (signed char, unsigned int, signed short);
extern void v19 (signed int, signed int, signed char, unsigned int);
extern void (*v20) (signed int, signed int, signed char, unsigned int);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern unsigned short v25 (signed char, signed int, unsigned char);
extern unsigned short (*v26) (signed char, signed int, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned int, unsigned short);
extern void (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v126 = 0U;
unsigned int v125 = 7U;
unsigned int v124 = 6U;

unsigned int v23 (signed char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -1;
unsigned char v129 = 5;
unsigned short v128 = 2;
trace++;
switch (trace)
{
case 8: 
return 2U;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned short v133 = 4;
unsigned int v132 = 5U;
unsigned int v131 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v134, signed short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = 0;
unsigned short v137 = 1;
signed short v136 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
