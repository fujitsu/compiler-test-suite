#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned char, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned char, signed int);
signed short v3 (unsigned short, unsigned short);
signed short (*v4) (unsigned short, unsigned short) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern signed int v13 (signed char, unsigned char);
extern signed int (*v14) (signed char, unsigned char);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
unsigned int v19 (signed int, unsigned int, signed short);
unsigned int (*v20) (signed int, unsigned int, signed short) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned short v23 (signed short, signed int, signed char);
extern unsigned short (*v24) (signed short, signed int, signed char);
extern unsigned char v25 (signed int, unsigned char);
extern unsigned char (*v26) (signed int, unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 3;
signed int v122 = 2;
unsigned char v121 = 2;

unsigned int v19 (signed int v124, unsigned int v125, signed short v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -1;
unsigned char v128 = 0;
unsigned short v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v130, unsigned short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 1U;
signed int v133 = -4;
unsigned short v132 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
