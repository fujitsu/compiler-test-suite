#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, unsigned short);
extern unsigned short v5 (unsigned short, signed int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed int, signed char, signed short);
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
extern unsigned short v11 (signed short, signed int, unsigned short, unsigned short);
extern unsigned short (*v12) (signed short, signed int, unsigned short, unsigned short);
extern signed char v13 (unsigned char, unsigned short, signed int);
extern signed char (*v14) (unsigned char, unsigned short, signed int);
unsigned short v15 (unsigned short, signed int);
unsigned short (*v16) (unsigned short, signed int) = v15;
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = -3;
unsigned int v91 = 6U;
unsigned int v90 = 7U;

unsigned short v15 (unsigned short v93, signed int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -3;
signed short v96 = -3;
unsigned char v95 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 0;
unsigned char v100 = 1;
signed char v99 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
