#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, unsigned char);
extern unsigned int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
unsigned char v5 (signed int, signed short, unsigned int, unsigned char);
unsigned char (*v6) (signed int, signed short, unsigned int, unsigned char) = v5;
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
signed short v11 (unsigned char, unsigned int);
signed short (*v12) (unsigned char, unsigned int) = v11;
extern signed int v13 (unsigned char, signed short, signed short);
extern signed int (*v14) (unsigned char, signed short, signed short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, unsigned char, signed char);
extern signed short v21 (signed short, signed char);
extern signed short (*v22) (signed short, signed char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 5U;
unsigned int v85 = 0U;
unsigned char v84 = 2;

signed int v27 (void)
{
{
for (;;) {
signed int v89 = -2;
unsigned short v88 = 1;
unsigned char v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v90, unsigned int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -3;
unsigned short v93 = 6;
signed char v92 = -3;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v95, signed short v96, unsigned int v97, unsigned char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -2;
signed short v100 = 2;
signed short v99 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
