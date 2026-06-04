#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned short v3 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char);
extern unsigned char v5 (unsigned char, unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned int, unsigned char);
extern unsigned int v7 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v8) (unsigned char, unsigned char, signed short, signed int);
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
extern unsigned char v13 (unsigned char, signed short, signed short, signed int);
extern unsigned char (*v14) (unsigned char, signed short, signed short, signed int);
extern signed short v15 (signed int, signed char, signed int, signed short);
extern signed short (*v16) (signed int, signed char, signed int, signed short);
signed int v17 (unsigned int, signed char);
signed int (*v18) (unsigned int, signed char) = v17;
extern void v19 (signed int, signed int);
extern void (*v20) (signed int, signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
unsigned int v29 (signed int);
unsigned int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v128 = 2;
unsigned short v127 = 6;
unsigned short v126 = 2;

unsigned int v29 (signed int v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
signed int v131 = -4;
unsigned int v130 = 5U;
trace++;
switch (trace)
{
case 3: 
return 6U;
case 9: 
return 0U;
case 11: 
return 5U;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v133, signed char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -2;
signed short v136 = 1;
signed char v135 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
