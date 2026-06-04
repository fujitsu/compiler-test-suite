#include <stdlib.h>
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (signed char, unsigned int);
extern signed short (*v6) (signed char, unsigned int);
unsigned char v7 (unsigned int, unsigned short);
unsigned char (*v8) (unsigned int, unsigned short) = v7;
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned int v19 (signed char, unsigned short, signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned short, signed char, unsigned int);
extern signed int v21 (signed short, signed int, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned short);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned char v27 (signed char, signed short, unsigned char);
extern unsigned char (*v28) (signed char, signed short, unsigned char);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = 1;
unsigned int v98 = 7U;
signed short v97 = 0;

unsigned char v7 (unsigned int v100, unsigned short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -3;
unsigned int v103 = 2U;
unsigned int v102 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed char v107 = 0;
signed int v106 = -3;
signed short v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
