#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (signed char, signed char);
extern signed char (*v4) (signed char, signed char);
extern unsigned char v5 (signed short, signed int, unsigned char);
extern unsigned char (*v6) (signed short, signed int, unsigned char);
extern void v7 (signed char);
extern void (*v8) (signed char);
extern unsigned char v9 (signed char, unsigned int);
extern unsigned char (*v10) (signed char, unsigned int);
extern void v13 (unsigned char, unsigned int, signed short, signed short);
extern void (*v14) (unsigned char, unsigned int, signed short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned char v19 (signed char, unsigned char, signed int);
unsigned char (*v20) (signed char, unsigned char, signed int) = v19;
unsigned char v21 (signed short, unsigned char, unsigned int);
unsigned char (*v22) (signed short, unsigned char, unsigned int) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed char v29 (signed int, unsigned char, signed short);
extern signed char (*v30) (signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = -1;
unsigned char v87 = 7;
signed char v86 = -1;

unsigned char v21 (signed short v89, unsigned char v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -4;
signed int v93 = -2;
signed char v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed char v95, unsigned char v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 0;
signed int v99 = 3;
signed short v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
