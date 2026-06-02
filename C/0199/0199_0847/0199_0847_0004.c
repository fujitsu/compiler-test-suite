#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int);
extern signed char (*v2) (signed char, unsigned int, unsigned int);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned char v5 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int, signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned char);
extern unsigned int (*v10) (unsigned short, unsigned char);
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
signed int v17 (unsigned int, signed char, unsigned short);
signed int (*v18) (unsigned int, signed char, unsigned short) = v17;
extern unsigned char v19 (signed short, unsigned int, signed short);
extern unsigned char (*v20) (signed short, unsigned int, signed short);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
signed short v29 (unsigned short, signed short);
signed short (*v30) (unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = -2;
unsigned short v124 = 0;
signed int v123 = -1;

signed short v29 (unsigned short v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 6;
unsigned short v129 = 5;
signed char v128 = -3;
trace++;
switch (trace)
{
case 7: 
return 1;
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
signed int v133 = 1;
unsigned short v132 = 7;
unsigned short v131 = 4;
trace++;
switch (trace)
{
case 3: 
return 2U;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v134, signed char v135, unsigned short v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -1;
signed short v138 = 0;
unsigned short v137 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
