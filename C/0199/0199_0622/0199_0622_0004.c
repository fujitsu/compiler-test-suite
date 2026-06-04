#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern signed char v3 (signed char, signed short, signed char, unsigned short);
extern signed char (*v4) (signed char, signed short, signed char, unsigned short);
extern unsigned int v5 (unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char);
extern void v7 (unsigned short, signed short, unsigned char);
extern void (*v8) (unsigned short, signed short, unsigned char);
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
extern unsigned int v11 (signed int, signed short, signed char, signed short);
extern unsigned int (*v12) (signed int, signed short, signed char, signed short);
extern unsigned char v13 (signed int, unsigned char, signed char);
extern unsigned char (*v14) (signed int, unsigned char, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed short, unsigned int);
extern void (*v24) (signed short, unsigned int);
void v27 (signed int, signed short);
void (*v28) (signed int, signed short) = v27;
signed char v29 (unsigned char);
signed char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v126 = -4;
signed int v125 = -2;
signed short v124 = -4;

signed char v29 (unsigned char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -2;
signed int v129 = -1;
unsigned short v128 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (signed int v131, signed short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 1U;
unsigned int v134 = 6U;
signed short v133 = -4;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}
