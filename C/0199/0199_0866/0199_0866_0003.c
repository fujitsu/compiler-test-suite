#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int);
unsigned char v7 (signed short, unsigned short, unsigned char);
unsigned char (*v8) (signed short, unsigned short, unsigned char) = v7;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed char v13 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
signed int v23 (unsigned short, signed int);
signed int (*v24) (unsigned short, signed int) = v23;
extern signed int v25 (unsigned char, unsigned char);
extern signed int (*v26) (unsigned char, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned char v29 (unsigned int, signed char, unsigned short);
extern unsigned char (*v30) (unsigned int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = -2;
unsigned char v111 = 0;
unsigned short v110 = 3;

signed int v23 (unsigned short v113, signed int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 2;
unsigned int v116 = 5U;
signed short v115 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v118, unsigned short v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 7;
unsigned int v122 = 4U;
unsigned int v121 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
