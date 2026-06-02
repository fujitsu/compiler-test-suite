#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned short v5 (signed short);
unsigned short (*v6) (signed short) = v5;
signed short v7 (signed short, unsigned char, signed char, signed short);
signed short (*v8) (signed short, unsigned char, signed char, signed short) = v7;
extern unsigned int v9 (signed short, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char);
extern unsigned char v11 (unsigned short, signed char, signed int, signed short);
extern unsigned char (*v12) (unsigned short, signed char, signed int, signed short);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern void v15 (signed int, signed char);
extern void (*v16) (signed int, signed char);
extern unsigned short v17 (unsigned short, signed int, unsigned short);
extern unsigned short (*v18) (unsigned short, signed int, unsigned short);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
extern signed int v21 (signed short, unsigned short, unsigned short);
extern signed int (*v22) (signed short, unsigned short, unsigned short);
extern unsigned short v23 (signed int, signed short, unsigned char, unsigned short);
extern unsigned short (*v24) (signed int, signed short, unsigned char, unsigned short);
extern void v25 (unsigned char, signed short, signed int);
extern void (*v26) (unsigned char, signed short, signed int);
extern signed short v27 (unsigned int, signed short, unsigned char, signed char);
extern signed short (*v28) (unsigned int, signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v72 = 0;
signed int v71 = -1;
signed short v70 = 0;

unsigned char v19 (signed short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -2;
unsigned char v75 = 0;
signed int v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v77, unsigned char v78, signed char v79, signed short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = 2;
unsigned int v82 = 7U;
unsigned int v81 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -2;
unsigned char v86 = 2;
signed int v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
