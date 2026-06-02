#include <stdlib.h>
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed int v5 (unsigned short, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int);
signed int v7 (unsigned char, signed int);
signed int (*v8) (unsigned char, signed int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed int);
extern signed short v13 (signed short, signed char, unsigned int, signed char);
extern signed short (*v14) (signed short, signed char, unsigned int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern signed short v23 (signed char, unsigned short, signed short, unsigned short);
extern signed short (*v24) (signed char, unsigned short, signed short, unsigned short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (unsigned int, signed short, signed int);
extern unsigned int (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v137 = 4;
unsigned int v136 = 0U;
signed char v135 = -3;

signed int v7 (unsigned char v138, signed int v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 1U;
unsigned int v141 = 0U;
unsigned short v140 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
