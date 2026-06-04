#include <stdlib.h>
extern unsigned int v1 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed int, unsigned short, unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, signed int);
extern unsigned char (*v10) (unsigned int, unsigned char, signed int);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
unsigned char v17 (unsigned int, unsigned char, unsigned short, signed short);
unsigned char (*v18) (unsigned int, unsigned char, unsigned short, signed short) = v17;
extern void v21 (unsigned int, unsigned short, signed int, signed int);
extern void (*v22) (unsigned int, unsigned short, signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
void v29 (unsigned short);
void (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = 3;
signed short v116 = 1;
signed short v115 = -4;

void v29 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 1;
unsigned int v120 = 0U;
signed int v119 = -1;
trace++;
switch (trace)
{
case 6: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v124 = 3;
signed short v123 = -3;
signed char v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v125, unsigned char v126, unsigned short v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -4;
unsigned short v130 = 6;
unsigned char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
