#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned short v17 (unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
extern signed short v23 (unsigned char, signed char, unsigned char, unsigned short);
extern signed short (*v24) (unsigned char, signed char, unsigned char, unsigned short);
extern signed short v25 (signed char, unsigned int, signed int, signed char);
extern signed short (*v26) (signed char, unsigned int, signed int, signed char);
signed char v27 (unsigned int, unsigned short, signed int, unsigned short);
signed char (*v28) (unsigned int, unsigned short, signed int, unsigned short) = v27;
extern void v29 (unsigned short, unsigned char, unsigned int, unsigned char);
extern void (*v30) (unsigned short, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v105 = 1;
unsigned short v104 = 3;
unsigned int v103 = 7U;

signed char v27 (unsigned int v106, unsigned short v107, signed int v108, unsigned short v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 0;
unsigned int v111 = 7U;
unsigned short v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
