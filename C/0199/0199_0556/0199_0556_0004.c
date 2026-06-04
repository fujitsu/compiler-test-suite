#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (signed short, unsigned short, unsigned char);
extern unsigned int (*v14) (signed short, unsigned short, unsigned char);
signed int v15 (signed char, signed int, signed short, unsigned char);
signed int (*v16) (signed char, signed int, signed short, unsigned char) = v15;
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed char v19 (unsigned char, signed int, signed char, signed int);
extern signed char (*v20) (unsigned char, signed int, signed char, signed int);
extern unsigned short v21 (unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int);
extern unsigned int v25 (unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, signed short);
extern signed char v27 (signed char, signed int);
extern signed char (*v28) (signed char, signed int);
extern signed short v29 (unsigned int, unsigned char, unsigned char);
extern signed short (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 1;
unsigned int v118 = 6U;
signed int v117 = -3;

signed int v17 (void)
{
{
for (;;) {
signed int v122 = 2;
unsigned char v121 = 5;
signed short v120 = 3;
trace++;
switch (trace)
{
case 9: 
return -2;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed int v15 (signed char v123, signed int v124, signed short v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 1;
signed short v128 = 2;
unsigned short v127 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
