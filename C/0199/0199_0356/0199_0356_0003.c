#include <stdlib.h>
extern void v1 (signed int, signed short);
extern void (*v2) (signed int, signed short);
extern signed int v3 (signed int, unsigned char, unsigned short);
extern signed int (*v4) (signed int, unsigned char, unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern unsigned int v11 (signed short, unsigned char);
extern unsigned int (*v12) (signed short, unsigned char);
extern unsigned char v13 (signed char, signed short, signed char);
extern unsigned char (*v14) (signed char, signed short, signed char);
extern signed char v15 (unsigned int, signed int, signed int, signed int);
extern signed char (*v16) (unsigned int, signed int, signed int, signed int);
extern signed char v17 (signed int, signed short, unsigned short);
extern signed char (*v18) (signed int, signed short, unsigned short);
extern unsigned int v19 (unsigned short, signed char);
extern unsigned int (*v20) (unsigned short, signed char);
unsigned char v21 (unsigned char);
unsigned char (*v22) (unsigned char) = v21;
unsigned char v23 (signed int, unsigned short, signed char, unsigned char);
unsigned char (*v24) (signed int, unsigned short, signed char, unsigned char) = v23;
extern unsigned short v25 (unsigned char, signed short, signed int, unsigned int);
extern unsigned short (*v26) (unsigned char, signed short, signed int, unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v112 = 2;
unsigned char v111 = 5;
unsigned short v110 = 1;

unsigned char v23 (signed int v113, unsigned short v114, signed char v115, unsigned char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -3;
unsigned char v118 = 0;
unsigned char v117 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = -4;
signed char v122 = -4;
unsigned int v121 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
