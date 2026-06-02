#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (unsigned int, unsigned int, unsigned char);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern signed short v7 (unsigned short, signed short, unsigned int);
extern signed short (*v8) (unsigned short, signed short, unsigned int);
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
unsigned int v13 (unsigned int);
unsigned int (*v14) (unsigned int) = v13;
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned char, signed int, unsigned int);
extern unsigned char v19 (signed short, unsigned char, signed short);
extern unsigned char (*v20) (signed short, unsigned char, signed short);
extern signed int v21 (signed short, signed int);
extern signed int (*v22) (signed short, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, signed int, signed char, signed short);
extern signed int (*v26) (signed int, signed int, signed char, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed int v29 (unsigned int, signed int);
extern signed int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v84 = 3U;
unsigned char v83 = 5;
signed short v82 = -3;

unsigned int v13 (unsigned int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 6;
unsigned char v87 = 3;
unsigned char v86 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = -3;
unsigned int v91 = 3U;
unsigned short v90 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
