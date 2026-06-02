#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed short, unsigned char);
extern unsigned char (*v4) (unsigned int, signed short, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed int v9 (signed short, unsigned char, signed char);
signed int (*v10) (signed short, unsigned char, signed char) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v17 (unsigned int, unsigned int);
extern signed short (*v18) (unsigned int, unsigned int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed int, unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed int, signed short);
extern unsigned char (*v24) (signed int, signed int, signed short);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v132 = -4;
unsigned short v131 = 4;
unsigned char v130 = 3;

signed int v9 (signed short v133, unsigned char v134, signed char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 7U;
unsigned int v137 = 5U;
signed int v136 = 3;
trace++;
switch (trace)
{
case 8: 
return v136;
case 10: 
return v136;
default: abort ();
}
}
}
}
