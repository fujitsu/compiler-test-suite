#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed char, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed char, signed int);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
extern unsigned char v11 (unsigned short, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned int);
signed char v13 (signed short, unsigned int);
signed char (*v14) (signed short, unsigned int) = v13;
unsigned int v15 (signed char, unsigned char, signed short);
unsigned int (*v16) (signed char, unsigned char, signed short) = v15;
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
extern void v21 (unsigned char, signed short, unsigned char, unsigned short);
extern void (*v22) (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (unsigned int, signed int, signed char);
extern unsigned short (*v28) (unsigned int, signed int, signed char);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v87 = -4;
signed char v86 = -3;
unsigned int v85 = 6U;

unsigned int v15 (signed char v88, unsigned char v89, signed short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 2U;
unsigned char v92 = 2;
signed short v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -2;
signed char v97 = -3;
signed short v96 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
