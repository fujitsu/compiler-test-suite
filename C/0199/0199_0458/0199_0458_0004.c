#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned short v17 (unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
signed char v21 (signed char, unsigned short);
signed char (*v22) (signed char, unsigned short) = v21;
extern signed short v23 (unsigned char, signed char, unsigned char, unsigned short);
extern signed short (*v24) (unsigned char, signed char, unsigned char, unsigned short);
extern signed short v25 (signed char, unsigned int, signed int, signed char);
extern signed short (*v26) (signed char, unsigned int, signed int, signed char);
extern signed char v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern void v29 (unsigned short, unsigned char, unsigned int, unsigned char);
extern void (*v30) (unsigned short, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v133 = -1;
unsigned int v132 = 2U;
unsigned int v131 = 6U;

signed char v21 (signed char v134, unsigned short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = 0;
unsigned short v137 = 2;
unsigned short v136 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 0;
unsigned short v141 = 2;
unsigned int v140 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
