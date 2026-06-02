#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned char, signed int);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned int v5 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v6) (signed int, signed int, unsigned char, signed char);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
extern signed char v11 (unsigned char, signed char, signed int);
extern signed char (*v12) (unsigned char, signed char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed char v19 (signed short);
signed char (*v20) (signed short) = v19;
extern unsigned int v21 (signed char, signed char);
extern unsigned int (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (unsigned int, signed short);
extern unsigned short (*v26) (unsigned int, signed short);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned char v29 (unsigned int, unsigned short, signed char, unsigned int);
unsigned char (*v30) (unsigned int, unsigned short, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v97 = 6U;
unsigned char v96 = 0;
signed int v95 = 1;

unsigned char v29 (unsigned int v98, unsigned short v99, signed char v100, unsigned int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 5;
unsigned int v103 = 6U;
unsigned short v102 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 3;
signed char v107 = -3;
unsigned int v106 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
