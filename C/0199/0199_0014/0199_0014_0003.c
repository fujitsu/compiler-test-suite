#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short, signed short, unsigned short);
extern void v3 (unsigned short, signed char, signed int);
extern void (*v4) (unsigned short, signed char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned short v13 (signed int, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned short, unsigned int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed int v19 (unsigned short, signed int, unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, signed int, unsigned short, unsigned char);
extern unsigned char v21 (unsigned char, signed int);
extern unsigned char (*v22) (unsigned char, signed int);
signed int v23 (unsigned char, unsigned short, unsigned int, unsigned short);
signed int (*v24) (unsigned char, unsigned short, unsigned int, unsigned short) = v23;
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern void v27 (signed char);
extern void (*v28) (signed char);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = -3;
signed int v118 = 0;
signed int v117 = -3;

unsigned char v29 (void)
{
{
for (;;) {
signed int v122 = -3;
signed int v121 = 3;
unsigned int v120 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned char v123, unsigned short v124, unsigned int v125, unsigned short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -3;
signed char v128 = -1;
signed int v127 = -1;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}
