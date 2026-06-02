#include <stdlib.h>
extern signed char v1 (signed int, signed char, unsigned short);
extern signed char (*v2) (signed int, signed char, unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, unsigned short);
extern signed short (*v6) (signed short, unsigned char, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed char, unsigned short, unsigned char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (unsigned char, signed char, signed char);
extern signed short (*v14) (unsigned char, signed char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned char v23 (signed int, signed int, unsigned int, unsigned char);
unsigned char (*v24) (signed int, signed int, unsigned int, unsigned char) = v23;
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
signed int v27 (signed char);
signed int (*v28) (signed char) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v116 = 2;
unsigned char v115 = 5;
signed short v114 = -3;

signed int v27 (signed char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 3;
signed char v119 = -2;
unsigned char v118 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed int v121, signed int v122, unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 0;
signed short v126 = 2;
unsigned int v125 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
