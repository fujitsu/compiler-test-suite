#include <stdlib.h>
signed char v3 (signed short, signed char, signed char, signed char);
signed char (*v4) (signed short, signed char, signed char, signed char) = v3;
extern signed char v7 (unsigned char, unsigned short, unsigned char);
extern signed char (*v8) (unsigned char, unsigned short, unsigned char);
extern void v9 (unsigned short, unsigned char, signed int);
extern void (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (signed int);
extern signed int (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
extern unsigned char v19 (signed short, unsigned short, signed int);
extern unsigned char (*v20) (signed short, unsigned short, signed int);
extern void v21 (unsigned char, signed char, unsigned char);
extern void (*v22) (unsigned char, signed char, unsigned char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern unsigned int v27 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, signed short);
extern signed char v29 (signed short, unsigned short);
extern signed char (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v106 = -2;
unsigned char v105 = 1;
unsigned int v104 = 7U;

signed char v3 (signed short v107, signed char v108, signed char v109, signed char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 0;
unsigned short v112 = 0;
unsigned char v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
