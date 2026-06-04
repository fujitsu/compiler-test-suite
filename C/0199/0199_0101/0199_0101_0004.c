#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern unsigned char v3 (signed short, unsigned short, signed char);
extern unsigned char (*v4) (signed short, unsigned short, signed char);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern void v11 (signed short, unsigned int, signed char);
extern void (*v12) (signed short, unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
signed char v19 (signed char, signed char, unsigned short);
signed char (*v20) (signed char, signed char, unsigned short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v25 (unsigned short, signed int);
extern signed short (*v26) (unsigned short, signed int);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
void v29 (signed int, unsigned char, unsigned int);
void (*v30) (signed int, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v126 = 3;
signed char v125 = 0;
unsigned short v124 = 4;

void v29 (signed int v127, unsigned char v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 3;
signed short v131 = 1;
unsigned char v130 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (void)
{
{
for (;;) {
signed char v135 = -3;
unsigned char v134 = 3;
signed int v133 = 1;
trace++;
switch (trace)
{
case 3: 
return 2;
case 5: 
return 2;
default: abort ();
}
}
}
}

signed char v19 (signed char v136, signed char v137, unsigned short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 3;
signed short v140 = -1;
unsigned short v139 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
