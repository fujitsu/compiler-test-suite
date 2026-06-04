#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed int, signed short);
extern unsigned short v3 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char, signed int);
unsigned int v5 (signed char, unsigned int);
unsigned int (*v6) (signed char, unsigned int) = v5;
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned int, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (signed int, signed short, unsigned char, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed short);
extern signed int (*v28) (signed short, signed short);
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v132 = 6U;
unsigned char v131 = 2;
unsigned int v130 = 0U;

unsigned int v5 (signed char v133, unsigned int v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 4;
unsigned int v136 = 2U;
signed char v135 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
