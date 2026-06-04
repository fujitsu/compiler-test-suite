#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
signed short v9 (signed char);
signed short (*v10) (signed char) = v9;
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned short v15 (signed int, unsigned int);
extern unsigned short (*v16) (signed int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v21 (unsigned char, signed char, signed short);
extern unsigned short (*v22) (unsigned char, signed char, signed short);
unsigned int v23 (unsigned int, unsigned int, unsigned int, unsigned char);
unsigned int (*v24) (unsigned int, unsigned int, unsigned int, unsigned char) = v23;
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern signed short v27 (signed char, unsigned char);
extern signed short (*v28) (signed char, unsigned char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v118 = 1;
signed short v117 = -3;
unsigned char v116 = 1;

unsigned int v23 (unsigned int v119, unsigned int v120, unsigned int v121, unsigned char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 6;
unsigned char v124 = 5;
signed char v123 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 6;
signed int v128 = 3;
unsigned char v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
