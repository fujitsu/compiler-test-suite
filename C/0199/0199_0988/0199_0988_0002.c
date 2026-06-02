#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
unsigned short v3 (unsigned char, signed char, signed char);
unsigned short (*v4) (unsigned char, signed char, signed char) = v3;
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed char v7 (signed short, signed short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short);
extern void v11 (signed short, unsigned short);
extern void (*v12) (signed short, unsigned short);
unsigned char v13 (signed int, unsigned short, signed short, signed int);
unsigned char (*v14) (signed int, unsigned short, signed short, signed int) = v13;
extern void v15 (unsigned int, unsigned short, unsigned int, signed int);
extern void (*v16) (unsigned int, unsigned short, unsigned int, signed int);
extern unsigned short v17 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned char, unsigned int, unsigned short, unsigned int);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed short, signed int, unsigned short);
extern signed short (*v26) (signed short, signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int, signed int);
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 3U;
signed short v80 = 0;
signed int v79 = -4;

unsigned char v13 (signed int v82, unsigned short v83, signed short v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 2;
unsigned char v87 = 4;
unsigned int v86 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v89, signed char v90, signed char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 1;
unsigned short v93 = 6;
unsigned short v92 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
