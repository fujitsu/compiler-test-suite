#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
extern signed short v11 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v12) (unsigned int, signed int, unsigned short, signed int);
extern signed int v13 (signed int, signed short, unsigned int);
extern signed int (*v14) (signed int, signed short, unsigned int);
extern signed char v15 (signed short);
extern signed char (*v16) (signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, signed char, signed int);
extern void (*v24) (signed char, unsigned char, signed char, signed int);
signed char v25 (unsigned int, signed char, unsigned short);
signed char (*v26) (unsigned int, signed char, unsigned short) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned short v29 (signed int);
unsigned short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = -1;
signed char v118 = 3;
unsigned char v117 = 3;

unsigned short v29 (signed int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 0;
unsigned char v122 = 4;
unsigned char v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned int v124, signed char v125, unsigned short v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 0;
unsigned char v128 = 1;
signed char v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
