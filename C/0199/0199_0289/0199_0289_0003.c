#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
unsigned short v3 (signed short, signed short, unsigned char, signed short);
unsigned short (*v4) (signed short, signed short, unsigned char, signed short) = v3;
extern unsigned short v5 (unsigned char, unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned int, unsigned short);
extern void v7 (unsigned short, unsigned short);
extern void (*v8) (unsigned short, unsigned short);
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (unsigned int, signed short, signed char, unsigned int);
extern unsigned int (*v16) (unsigned int, signed short, signed char, unsigned int);
extern unsigned short v17 (signed char, signed char, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed int, signed char, signed int, unsigned short);
extern unsigned short v23 (signed short, signed int, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char, unsigned char);
unsigned short v25 (unsigned char, signed int, unsigned short);
unsigned short (*v26) (unsigned char, signed int, unsigned short) = v25;
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned short v29 (signed int, unsigned char);
extern unsigned short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 4;
unsigned int v121 = 2U;
signed char v120 = 2;

unsigned short v25 (unsigned char v123, signed int v124, unsigned short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 1;
unsigned short v127 = 4;
unsigned char v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v129, signed short v130, unsigned char v131, signed short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 2;
unsigned char v134 = 2;
signed char v133 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
