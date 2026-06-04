#include <stdlib.h>
extern signed char v1 (unsigned int, signed char);
extern signed char (*v2) (unsigned int, signed char);
extern unsigned char v3 (unsigned int, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned char, unsigned int);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern void v7 (void);
extern void (*v8) (void);
extern signed int v11 (unsigned char, unsigned short, signed short, unsigned int);
extern signed int (*v12) (unsigned char, unsigned short, signed short, unsigned int);
extern signed short v13 (signed char, signed char, signed short);
extern signed short (*v14) (signed char, signed char, signed short);
extern unsigned short v15 (unsigned int, signed char, signed short);
extern unsigned short (*v16) (unsigned int, signed char, signed short);
signed char v17 (signed int, signed short);
signed char (*v18) (signed int, signed short) = v17;
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
signed short v23 (unsigned short);
signed short (*v24) (unsigned short) = v23;
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = 3;
unsigned int v92 = 6U;
signed int v91 = -2;

signed short v23 (unsigned short v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 7U;
unsigned short v96 = 0;
unsigned char v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v98, signed short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -1;
unsigned char v101 = 5;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
