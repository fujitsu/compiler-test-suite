#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
unsigned int v3 (unsigned int, unsigned short, unsigned char);
unsigned int (*v4) (unsigned int, unsigned short, unsigned char) = v3;
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
signed short v11 (signed int, unsigned short, signed int);
signed short (*v12) (signed int, unsigned short, signed int) = v11;
extern void v13 (signed short, signed short, unsigned short);
extern void (*v14) (signed short, signed short, unsigned short);
extern unsigned char v15 (unsigned short, signed int, signed char);
extern unsigned char (*v16) (unsigned short, signed int, signed char);
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned char);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned char);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
extern unsigned short v21 (signed int);
extern unsigned short (*v22) (signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (signed short, signed short, unsigned char);
extern signed short (*v30) (signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 2;
unsigned short v123 = 7;
unsigned short v122 = 7;

signed short v11 (signed int v125, unsigned short v126, signed int v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 0;
unsigned int v129 = 7U;
signed int v128 = -2;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v131, unsigned short v132, unsigned char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 3;
unsigned short v135 = 5;
signed short v134 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
