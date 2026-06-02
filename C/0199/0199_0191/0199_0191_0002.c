#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern signed char v3 (signed int, unsigned short, signed int);
extern signed char (*v4) (signed int, unsigned short, signed int);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
signed char v7 (unsigned char, unsigned int, unsigned char, signed int);
signed char (*v8) (unsigned char, unsigned int, unsigned char, signed int) = v7;
extern void v9 (unsigned int, signed short, signed char);
extern void (*v10) (unsigned int, signed short, signed char);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern signed short v13 (signed short, signed char, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, signed char, unsigned short);
extern signed int v15 (signed char, unsigned char);
extern signed int (*v16) (signed char, unsigned char);
extern void v17 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed short v23 (unsigned short, signed char, unsigned int, signed short);
extern signed short (*v24) (unsigned short, signed char, unsigned int, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
signed short v27 (signed short, signed char, unsigned char, unsigned short);
signed short (*v28) (signed short, signed char, unsigned char, unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 5;
unsigned char v75 = 6;
unsigned char v74 = 2;

signed short v27 (signed short v77, signed char v78, unsigned char v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = 1;
unsigned short v82 = 1;
unsigned short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v84, unsigned int v85, unsigned char v86, signed int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = -2;
signed char v89 = -4;
unsigned char v88 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
