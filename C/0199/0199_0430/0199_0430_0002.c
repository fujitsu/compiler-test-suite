#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern signed int v7 (unsigned char, signed char, unsigned int);
extern signed int (*v8) (unsigned char, signed char, unsigned int);
extern unsigned short v9 (unsigned char, signed short, signed int, signed char);
extern unsigned short (*v10) (unsigned char, signed short, signed int, signed char);
extern signed char v11 (signed short, unsigned char, signed short);
extern signed char (*v12) (signed short, unsigned char, signed short);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern signed char v15 (signed char, signed int, signed char);
extern signed char (*v16) (signed char, signed int, signed char);
extern signed int v17 (unsigned short, unsigned int, signed int);
extern signed int (*v18) (unsigned short, unsigned int, signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 6;
signed char v91 = 3;
unsigned short v90 = 7;

unsigned int v21 (void)
{
{
for (;;) {
signed short v95 = 3;
unsigned int v94 = 5U;
unsigned short v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 5;
signed short v98 = 2;
signed int v97 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
