#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
extern signed short v3 (signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
void v19 (unsigned int, signed int, signed int, unsigned short);
void (*v20) (unsigned int, signed int, signed int, unsigned short) = v19;
extern signed char v21 (signed char, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned short, signed short);
extern signed char v23 (signed char, unsigned short, unsigned short);
extern signed char (*v24) (signed char, unsigned short, unsigned short);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = -4;
signed int v114 = 2;
unsigned int v113 = 4U;

void v19 (unsigned int v116, signed int v117, signed int v118, unsigned short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 0;
unsigned char v121 = 6;
signed char v120 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned int v125 = 7U;
unsigned char v124 = 4;
unsigned int v123 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed short v128 = 3;
unsigned char v127 = 7;
unsigned char v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
