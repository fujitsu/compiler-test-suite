#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (unsigned char, unsigned char, signed int);
signed int (*v4) (unsigned char, unsigned char, signed int) = v3;
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
void v13 (signed int, unsigned int, signed int);
void (*v14) (signed int, unsigned int, signed int) = v13;
extern unsigned char v15 (signed char, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v17 (signed char, unsigned short, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned short, signed int, unsigned int);
extern unsigned short v19 (unsigned short, signed char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned short, signed char, signed char, unsigned char);
extern void v21 (void);
extern void (*v22) (void);
extern signed char v25 (signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, unsigned short, signed short);
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
extern signed char v29 (unsigned int, signed int, unsigned int);
extern signed char (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = -2;
signed char v78 = -4;
signed char v77 = -4;

void v13 (signed int v80, unsigned int v81, signed int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -1;
signed int v84 = 3;
signed int v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v86, unsigned char v87, signed int v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 0;
signed int v90 = 3;
signed int v89 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
