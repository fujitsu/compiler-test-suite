#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed short v3 (signed char, signed char, unsigned char);
extern signed short (*v4) (signed char, signed char, unsigned char);
extern signed int v5 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed char);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed short, signed short, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed short, unsigned int, unsigned char);
extern signed char v21 (signed short, unsigned char, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short);
void v23 (signed char, signed int);
void (*v24) (signed char, signed int) = v23;
unsigned short v25 (signed char, signed int, signed short, unsigned int);
unsigned short (*v26) (signed char, signed int, signed short, unsigned int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v121 = 0;
unsigned int v120 = 3U;
unsigned char v119 = 0;

unsigned short v25 (signed char v122, signed int v123, signed short v124, unsigned int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -4;
unsigned short v127 = 5;
signed int v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v129, signed int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -3;
signed char v132 = -3;
unsigned char v131 = 4;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}
