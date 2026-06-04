#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
unsigned int v3 (signed int, signed int, unsigned char, signed char);
unsigned int (*v4) (signed int, signed int, unsigned char, signed char) = v3;
extern signed char v7 (unsigned int, signed short, unsigned char, signed int);
extern signed char (*v8) (unsigned int, signed short, unsigned char, signed int);
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, signed int, signed char, unsigned int);
extern signed short (*v18) (signed char, signed int, signed char, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = 0;
unsigned char v87 = 3;
unsigned char v86 = 3;

unsigned int v3 (signed int v89, signed int v90, unsigned char v91, signed char v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 1;
signed int v94 = 3;
unsigned int v93 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
