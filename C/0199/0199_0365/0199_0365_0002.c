#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
signed short v17 (signed char, signed short, signed char, unsigned int);
signed short (*v18) (signed char, signed short, signed char, unsigned int) = v17;
extern unsigned short v19 (unsigned int, signed short);
extern unsigned short (*v20) (unsigned int, signed short);
unsigned int v21 (unsigned int, unsigned char, signed int);
unsigned int (*v22) (unsigned int, unsigned char, signed int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v27 (signed int, signed int);
extern signed char (*v28) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v97 = 3;
unsigned short v96 = 1;
unsigned short v95 = 4;

unsigned int v21 (unsigned int v98, unsigned char v99, signed int v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 2U;
unsigned char v102 = 6;
signed int v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v104, signed short v105, signed char v106, unsigned int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 4U;
signed short v109 = -4;
unsigned char v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
