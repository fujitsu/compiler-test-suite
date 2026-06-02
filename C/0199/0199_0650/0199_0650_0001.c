#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, signed short);
extern unsigned short (*v8) (signed short, signed short);
extern void v9 (signed char, unsigned int);
extern void (*v10) (signed char, unsigned int);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (signed char, unsigned int, signed char);
extern signed short (*v16) (signed char, unsigned int, signed char);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
unsigned short v19 (unsigned char, unsigned char, signed char);
unsigned short (*v20) (unsigned char, unsigned char, signed char) = v19;
extern signed int v21 (unsigned char, unsigned int, signed int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, signed int, signed short);
extern signed char v23 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v24) (unsigned short, signed short, unsigned char, unsigned char);
extern unsigned int v25 (signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed char v29 (signed short, signed char, unsigned int, signed short);
extern signed char (*v30) (signed short, signed char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 1;
signed short v86 = 3;
signed char v85 = -1;

unsigned short v19 (unsigned char v88, unsigned char v89, signed char v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 3U;
unsigned int v92 = 6U;
unsigned short v91 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
