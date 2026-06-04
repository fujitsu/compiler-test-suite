#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned int v7 (unsigned char, unsigned int, signed char);
extern unsigned int (*v8) (unsigned char, unsigned int, signed char);
extern void v9 (unsigned char, unsigned int, signed short, signed char);
extern void (*v10) (unsigned char, unsigned int, signed short, signed char);
extern void v11 (signed short, signed char, signed char);
extern void (*v12) (signed short, signed char, signed char);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
extern void v21 (signed int, signed int, unsigned short);
extern void (*v22) (signed int, signed int, unsigned short);
signed short v23 (unsigned char, signed char, signed int, signed char);
signed short (*v24) (unsigned char, signed char, signed int, signed char) = v23;
extern signed char v25 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v26) (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed int v27 (unsigned short, unsigned char);
extern signed int (*v28) (unsigned short, unsigned char);
extern signed int v29 (unsigned short, unsigned short, signed char);
extern signed int (*v30) (unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 4U;
unsigned int v85 = 3U;
signed short v84 = 3;

signed short v23 (unsigned char v87, signed char v88, signed int v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 1;
signed char v92 = 3;
unsigned int v91 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
