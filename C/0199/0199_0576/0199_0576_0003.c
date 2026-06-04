#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int, signed char);
extern unsigned int (*v4) (unsigned int, signed char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (signed short, signed int, signed short);
extern signed int (*v10) (signed short, signed int, signed short);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
extern signed int v13 (unsigned short, unsigned short, unsigned int, signed int);
extern signed int (*v14) (unsigned short, unsigned short, unsigned int, signed int);
extern unsigned int v15 (unsigned short, signed char, signed short);
extern unsigned int (*v16) (unsigned short, signed char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed char v21 (signed char, signed int);
signed char (*v22) (signed char, signed int) = v21;
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern unsigned int v27 (unsigned short, signed short, signed int);
extern unsigned int (*v28) (unsigned short, signed short, signed int);
signed short v29 (signed char, unsigned int, unsigned short);
signed short (*v30) (signed char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = 0;
unsigned char v116 = 4;
unsigned char v115 = 5;

signed short v29 (signed char v118, unsigned int v119, unsigned short v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -2;
signed int v122 = -1;
unsigned char v121 = 7;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

signed char v21 (signed char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -3;
unsigned short v127 = 3;
unsigned int v126 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
