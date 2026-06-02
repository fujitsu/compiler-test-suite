#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
signed int v5 (unsigned short, unsigned short, unsigned short, unsigned char);
signed int (*v6) (unsigned short, unsigned short, unsigned short, unsigned char) = v5;
extern signed short v7 (signed short, signed char, unsigned int, signed char);
extern signed short (*v8) (signed short, signed char, unsigned int, signed char);
extern unsigned int v9 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v10) (signed short, unsigned char, signed int, signed short);
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, signed int, signed int);
extern signed short (*v22) (unsigned short, signed int, signed int);
extern signed char v23 (signed int, signed short, signed short, unsigned short);
extern signed char (*v24) (signed int, signed short, signed short, unsigned short);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v122 = 7;
signed int v121 = 0;
unsigned char v120 = 6;

signed int v5 (unsigned short v123, unsigned short v124, unsigned short v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 2;
signed int v128 = 0;
signed short v127 = -4;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 3;
unsigned short v132 = 2;
signed int v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
