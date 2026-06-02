#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned int);
signed int v5 (signed short, signed char);
signed int (*v6) (signed short, signed char) = v5;
extern unsigned short v7 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v8) (signed int, unsigned int, signed int, signed int);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (unsigned int, signed short);
extern void (*v14) (unsigned int, signed short);
extern signed char v15 (signed short, unsigned int, unsigned short);
extern signed char (*v16) (signed short, unsigned int, unsigned short);
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
extern signed int v23 (unsigned short, unsigned short);
extern signed int (*v24) (unsigned short, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (signed int, unsigned char, unsigned char);
extern void (*v28) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = -1;
signed char v119 = 3;
signed int v118 = 1;

signed int v19 (signed char v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 6;
signed char v123 = 1;
unsigned short v122 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 3;
unsigned short v127 = 5;
signed short v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -1;
signed char v132 = -3;
unsigned short v131 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
