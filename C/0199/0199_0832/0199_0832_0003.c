#include <stdlib.h>
signed char v3 (unsigned char);
signed char (*v4) (unsigned char) = v3;
extern signed int v5 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v6) (signed int, unsigned char, unsigned char, signed short);
extern unsigned int v7 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, unsigned short);
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned short v21 (unsigned int, signed char, signed int, unsigned short);
extern unsigned short (*v22) (unsigned int, signed char, signed int, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v27 (unsigned char, signed short, signed int);
extern signed int (*v28) (unsigned char, signed short, signed int);
unsigned int v29 (signed short, unsigned int, signed short);
unsigned int (*v30) (signed short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 0;
unsigned char v123 = 1;
unsigned int v122 = 4U;

unsigned int v29 (signed short v125, unsigned int v126, signed short v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 3;
unsigned int v129 = 7U;
unsigned short v128 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v133 = 5;
signed char v132 = 1;
signed char v131 = -2;
trace++;
switch (trace)
{
case 11: 
return v133;
default: abort ();
}
}
}
}

signed char v3 (unsigned char v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 5;
signed int v136 = 2;
unsigned short v135 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
