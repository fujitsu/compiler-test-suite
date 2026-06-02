#include <stdlib.h>
extern void v1 (signed char, unsigned int, signed short, unsigned char);
extern void (*v2) (signed char, unsigned int, signed short, unsigned char);
extern signed char v3 (unsigned int, signed char, unsigned int);
extern signed char (*v4) (unsigned int, signed char, unsigned int);
extern unsigned int v5 (unsigned short, unsigned char, signed int, signed int);
extern unsigned int (*v6) (unsigned short, unsigned char, signed int, signed int);
unsigned short v7 (signed short, signed int);
unsigned short (*v8) (signed short, signed int) = v7;
extern void v9 (signed short, unsigned char, signed short);
extern void (*v10) (signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed int, unsigned char, signed short);
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern unsigned char v15 (signed short, signed char, signed short);
extern unsigned char (*v16) (signed short, signed char, signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned char v19 (signed int, signed int, signed short, unsigned short);
unsigned char (*v20) (signed int, signed int, signed short, unsigned short) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned char, signed short, signed char, signed char);
extern unsigned int v29 (unsigned char, unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v88 = 3;
unsigned short v87 = 6;
signed int v86 = -1;

unsigned char v19 (signed int v89, signed int v90, signed short v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -2;
unsigned char v94 = 1;
signed int v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v96, signed int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 4U;
signed short v99 = 2;
signed int v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
