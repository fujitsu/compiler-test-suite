#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed int, unsigned int);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int);
extern signed char v5 (unsigned char, signed short, unsigned char);
extern signed char (*v6) (unsigned char, signed short, unsigned char);
extern signed int v9 (unsigned char, unsigned short, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short, unsigned short);
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned short);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
signed int v15 (signed short, unsigned short, unsigned short, signed short);
signed int (*v16) (signed short, unsigned short, unsigned short, signed short) = v15;
extern signed int v17 (unsigned int, unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed int, signed short, signed int, unsigned int);
extern unsigned short (*v20) (signed int, signed short, signed int, unsigned int);
extern unsigned short v21 (unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, signed char, signed int);
extern signed char v23 (signed int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned int, signed char, unsigned char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char v29 (unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = 2;
unsigned int v103 = 7U;
signed int v102 = -4;

signed int v15 (signed short v105, unsigned short v106, unsigned short v107, signed short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = -4;
signed char v110 = -2;
signed int v109 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
