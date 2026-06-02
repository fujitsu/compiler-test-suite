#include <stdlib.h>
extern unsigned char v1 (signed char, signed char, signed int);
extern unsigned char (*v2) (signed char, signed char, signed int);
signed short v3 (unsigned int, unsigned short, signed int);
signed short (*v4) (unsigned int, unsigned short, signed int) = v3;
extern unsigned int v5 (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned short, unsigned int, unsigned int);
extern void v7 (unsigned char, signed short);
extern void (*v8) (unsigned char, signed short);
extern unsigned int v9 (unsigned char, signed int, signed int, signed short);
extern unsigned int (*v10) (unsigned char, signed int, signed int, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (signed int);
signed short (*v18) (signed int) = v17;
extern unsigned int v19 (signed short, unsigned char, signed short);
extern unsigned int (*v20) (signed short, unsigned char, signed short);
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 7;
unsigned char v114 = 1;
unsigned int v113 = 4U;

void v21 (unsigned int v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -1;
signed int v118 = -3;
unsigned char v117 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -2;
signed char v122 = 2;
signed short v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v124, unsigned short v125, signed int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 2;
signed int v128 = 0;
unsigned int v127 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
