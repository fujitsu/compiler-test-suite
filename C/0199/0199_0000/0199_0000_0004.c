#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned int, unsigned char, signed short);
extern signed int (*v6) (unsigned int, unsigned char, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned short, unsigned int, signed short);
extern unsigned char (*v16) (unsigned short, unsigned int, signed short);
extern signed short v17 (signed int, unsigned short, signed char, unsigned int);
extern signed short (*v18) (signed int, unsigned short, signed char, unsigned int);
extern unsigned char v19 (unsigned char, signed int);
extern unsigned char (*v20) (unsigned char, signed int);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
extern unsigned short v27 (unsigned char, unsigned int, signed char);
extern unsigned short (*v28) (unsigned char, unsigned int, signed char);
signed short v29 (signed int, signed short, signed int);
signed short (*v30) (signed int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = 0;
unsigned char v133 = 0;
unsigned int v132 = 2U;

signed short v29 (signed int v135, signed short v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 1;
unsigned short v139 = 3;
signed int v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
