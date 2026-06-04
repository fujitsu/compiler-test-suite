#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned short);
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
unsigned int v5 (unsigned short, signed short, unsigned char);
unsigned int (*v6) (unsigned short, signed short, unsigned char) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed int, unsigned char);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned char);
extern void v11 (unsigned char, signed int, unsigned int, signed int);
extern void (*v12) (unsigned char, signed int, unsigned int, signed int);
extern void v13 (signed short, unsigned char);
extern void (*v14) (signed short, unsigned char);
unsigned short v17 (unsigned int, unsigned char, signed int, unsigned short);
unsigned short (*v18) (unsigned int, unsigned char, signed int, unsigned short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern signed char v29 (unsigned short, signed int);
extern signed char (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = -1;
signed int v88 = -4;
unsigned short v87 = 2;

unsigned short v17 (unsigned int v90, unsigned char v91, signed int v92, unsigned short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 6;
unsigned short v95 = 2;
signed int v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v97, signed short v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 0;
signed char v101 = -3;
unsigned char v100 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
