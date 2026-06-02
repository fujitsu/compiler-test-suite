#include <stdlib.h>
extern signed int v3 (signed short, signed char, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed char, signed short);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v16) (signed int, unsigned char, signed short, unsigned char);
extern signed char v17 (signed int, unsigned char);
extern signed char (*v18) (signed int, unsigned char);
extern signed char v19 (signed char, signed char, signed char);
extern signed char (*v20) (signed char, signed char, signed char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed char v27 (signed short, unsigned short, unsigned char);
signed char (*v28) (signed short, unsigned short, unsigned char) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = -2;
signed char v85 = -3;
signed int v84 = -1;

signed char v27 (signed short v87, unsigned short v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = -3;
unsigned char v91 = 5;
unsigned short v90 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
