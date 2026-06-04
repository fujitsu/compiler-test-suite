#include <stdlib.h>
extern signed char v1 (unsigned short, signed char, signed char);
extern signed char (*v2) (unsigned short, signed char, signed char);
extern signed int v3 (signed int, unsigned char, signed short);
extern signed int (*v4) (signed int, unsigned char, signed short);
extern signed char v5 (unsigned char, unsigned int, signed int);
extern signed char (*v6) (unsigned char, unsigned int, signed int);
extern unsigned short v7 (unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed short, unsigned char, unsigned char, unsigned short);
extern unsigned short (*v12) (signed short, unsigned char, unsigned char, unsigned short);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern signed short v15 (unsigned int, unsigned int, signed short);
extern signed short (*v16) (unsigned int, unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (unsigned short, unsigned short, signed int);
extern void (*v20) (unsigned short, unsigned short, signed int);
void v21 (unsigned short, signed char);
void (*v22) (unsigned short, signed char) = v21;
extern signed short v23 (signed char, signed short, signed char, unsigned short);
extern signed short (*v24) (signed char, signed short, signed char, unsigned short);
extern unsigned short v25 (unsigned int, signed short, signed char, signed short);
extern unsigned short (*v26) (unsigned int, signed short, signed char, signed short);
extern unsigned char v27 (signed char, unsigned short, signed short, unsigned char);
extern unsigned char (*v28) (signed char, unsigned short, signed short, unsigned char);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v106 = 2;
signed short v105 = -2;
signed short v104 = 2;

void v21 (unsigned short v107, signed char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -2;
signed char v110 = -1;
unsigned short v109 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
