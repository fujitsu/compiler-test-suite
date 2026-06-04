#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
extern void v3 (unsigned short, unsigned short);
extern void (*v4) (unsigned short, unsigned short);
extern void v5 (signed char, unsigned short);
extern void (*v6) (signed char, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (unsigned short, unsigned char, signed short);
extern unsigned int (*v12) (unsigned short, unsigned char, signed short);
extern unsigned char v13 (signed char, signed int, unsigned short);
extern unsigned char (*v14) (signed char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, signed short);
extern unsigned char (*v16) (signed int, signed short, signed short);
extern signed int v17 (unsigned int, unsigned char, signed int, signed int);
extern signed int (*v18) (unsigned int, unsigned char, signed int, signed int);
extern unsigned int v19 (signed int, unsigned char, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char, signed short, signed char);
extern signed char (*v26) (signed char, signed short, signed char);
signed short v29 (unsigned int, unsigned char, unsigned short, unsigned int);
signed short (*v30) (unsigned int, unsigned char, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 0U;
signed short v85 = 1;
unsigned int v84 = 6U;

signed short v29 (unsigned int v87, unsigned char v88, unsigned short v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 6U;
unsigned int v92 = 5U;
signed short v91 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
