#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
extern unsigned char v7 (signed char, signed char, unsigned char);
extern unsigned char (*v8) (signed char, signed char, unsigned char);
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed char v23 (unsigned short, signed short);
signed char (*v24) (unsigned short, signed short) = v23;
extern signed int v25 (signed int, signed char);
extern signed int (*v26) (signed int, signed char);
extern unsigned int v27 (unsigned char, signed char, signed short, signed char);
extern unsigned int (*v28) (unsigned char, signed char, signed short, signed char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v91 = 1;
signed char v90 = 3;
unsigned int v89 = 2U;

signed char v23 (unsigned short v92, signed short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 4;
unsigned int v95 = 6U;
signed int v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 3;
signed char v99 = -3;
unsigned char v98 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
