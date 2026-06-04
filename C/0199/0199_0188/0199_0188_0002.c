#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int, unsigned short);
extern unsigned short (*v2) (signed short, unsigned int, unsigned short);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned short v5 (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned short (*v6) (unsigned short, signed int, unsigned char, unsigned short);
signed char v7 (unsigned int, signed char, unsigned int);
signed char (*v8) (unsigned int, signed char, unsigned int) = v7;
extern signed short v9 (unsigned char, unsigned char, unsigned char);
extern signed short (*v10) (unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (signed short, signed char, unsigned short, unsigned short);
extern unsigned int (*v12) (signed short, signed char, unsigned short, unsigned short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed short v15 (unsigned int, unsigned short, signed int);
extern signed short (*v16) (unsigned int, unsigned short, signed int);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern signed int v19 (unsigned char, unsigned short, signed int, signed short);
extern signed int (*v20) (unsigned char, unsigned short, signed int, signed short);
extern unsigned char v21 (unsigned char, unsigned char, signed char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned char v29 (unsigned char, signed short, signed char, signed int);
extern unsigned char (*v30) (unsigned char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = -2;
unsigned short v102 = 0;
signed char v101 = 2;

signed char v7 (unsigned int v104, signed char v105, unsigned int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -2;
signed int v108 = -3;
signed char v107 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
