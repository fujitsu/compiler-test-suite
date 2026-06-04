#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned short, unsigned int, signed int);
extern signed short (*v4) (unsigned short, unsigned int, signed int);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned short, signed short);
extern void (*v10) (unsigned int, unsigned short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (unsigned int, signed char, signed short);
extern unsigned char (*v14) (unsigned int, signed char, signed short);
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
unsigned int v21 (unsigned short, unsigned int, signed short);
unsigned int (*v22) (unsigned short, unsigned int, signed short) = v21;
extern unsigned int v23 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed short, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v116 = -3;
unsigned short v115 = 2;
unsigned short v114 = 2;

unsigned int v21 (unsigned short v117, unsigned int v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 5;
signed short v121 = 0;
unsigned int v120 = 5U;
trace++;
switch (trace)
{
case 10: 
return v120;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed int v125 = 0;
unsigned short v124 = 3;
signed short v123 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v128 = 2;
signed char v127 = 1;
unsigned char v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
