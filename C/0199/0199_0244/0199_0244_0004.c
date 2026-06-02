#include <stdlib.h>
extern void v3 (signed short, unsigned int, signed char, signed char);
extern void (*v4) (signed short, unsigned int, signed char, signed char);
extern unsigned short v5 (unsigned int, signed short);
extern unsigned short (*v6) (unsigned int, signed short);
extern signed short v7 (unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned int);
extern unsigned char v13 (signed int, signed short);
extern unsigned char (*v14) (signed int, signed short);
signed int v15 (signed char, unsigned char, signed int, unsigned char);
signed int (*v16) (signed char, unsigned char, signed int, unsigned char) = v15;
extern void v17 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v18) (unsigned int, unsigned short, signed char, unsigned short);
extern void v19 (signed char, unsigned char);
extern void (*v20) (signed char, unsigned char);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned int v25 (signed int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned char);
extern signed char v27 (signed short, signed short);
extern signed char (*v28) (signed short, signed short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v125 = 2;
unsigned short v124 = 4;
unsigned short v123 = 3;

void v29 (void)
{
{
for (;;) {
signed short v128 = -3;
unsigned short v127 = 2;
signed int v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned char v131 = 3;
signed char v130 = -3;
unsigned short v129 = 2;
trace++;
switch (trace)
{
case 6: 
return v129;
case 8: 
return v129;
default: abort ();
}
}
}
}

signed int v15 (signed char v132, unsigned char v133, signed int v134, unsigned char v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = 0;
unsigned char v137 = 6;
signed char v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
