#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (signed int, unsigned int, unsigned int, unsigned char);
signed int v3 (unsigned char);
signed int (*v4) (unsigned char) = v3;
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed int v9 (unsigned short, signed int, signed short, unsigned char);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned char);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
void v13 (signed int, signed int);
void (*v14) (signed int, signed int) = v13;
extern signed short v15 (unsigned short, unsigned short);
extern signed short (*v16) (unsigned short, unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned short, unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
void v25 (unsigned short, unsigned short, signed short);
void (*v26) (unsigned short, unsigned short, signed short) = v25;
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = 1;
signed short v120 = 0;
signed char v119 = 1;

void v25 (unsigned short v122, unsigned short v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 1;
signed short v126 = 1;
signed char v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v128, signed int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 5U;
unsigned char v131 = 2;
unsigned short v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 2;
unsigned short v135 = 1;
signed char v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
