#include <stdlib.h>
extern unsigned short v1 (signed short, signed short);
extern unsigned short (*v2) (signed short, signed short);
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned int, signed int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned char, signed short);
signed char v9 (unsigned int, unsigned char, unsigned short, unsigned int);
signed char (*v10) (unsigned int, unsigned char, unsigned short, unsigned int) = v9;
extern unsigned int v11 (unsigned char, unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed int, signed int, unsigned char, unsigned int);
extern signed short (*v20) (signed int, signed int, unsigned char, unsigned int);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern unsigned short v23 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
void v27 (signed char, signed short, unsigned char, signed short);
void (*v28) (signed char, signed short, unsigned char, signed short) = v27;
extern signed char v29 (signed int, unsigned int, signed int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 5;
signed int v122 = 1;
signed char v121 = -2;

void v27 (signed char v124, signed short v125, unsigned char v126, signed short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 0;
signed int v129 = 3;
signed short v128 = 3;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

signed char v9 (unsigned int v131, unsigned char v132, unsigned short v133, unsigned int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 0;
unsigned char v136 = 1;
signed int v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
