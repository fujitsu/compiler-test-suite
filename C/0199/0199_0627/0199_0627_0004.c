#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned int);
extern unsigned short (*v2) (signed char, unsigned int);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
unsigned char v9 (signed char, signed int);
unsigned char (*v10) (signed char, signed int) = v9;
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern void v13 (unsigned short, unsigned short, signed char);
extern void (*v14) (unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
unsigned short v27 (unsigned char, signed char);
unsigned short (*v28) (unsigned char, signed char) = v27;
extern signed int v29 (unsigned short, signed short, unsigned short, signed short);
extern signed int (*v30) (unsigned short, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v128 = -3;
signed int v127 = -1;
signed int v126 = 2;

unsigned short v27 (unsigned char v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 1;
signed char v132 = -3;
signed char v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v134, signed int v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 1;
unsigned char v137 = 3;
unsigned int v136 = 6U;
trace++;
switch (trace)
{
case 9: 
return v137;
default: abort ();
}
}
}
}
