#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern unsigned int v5 (signed int, unsigned int, signed int, unsigned short);
extern unsigned int (*v6) (signed int, unsigned int, signed int, unsigned short);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern void v9 (signed short, signed short, signed char, signed int);
extern void (*v10) (signed short, signed short, signed char, signed int);
extern signed char v11 (unsigned int, unsigned int, signed char);
extern signed char (*v12) (unsigned int, unsigned int, signed char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned char v15 (signed int, signed char);
extern unsigned char (*v16) (signed int, signed char);
extern signed char v17 (signed char, unsigned short);
extern signed char (*v18) (signed char, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed int, signed short);
extern signed short (*v22) (signed int, signed short);
unsigned char v23 (signed char, unsigned int, unsigned short, signed short);
unsigned char (*v24) (signed char, unsigned int, unsigned short, signed short) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed int, signed short, signed char, unsigned int);
extern signed short (*v28) (signed int, signed short, signed char, unsigned int);
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 4U;
unsigned char v74 = 1;
unsigned int v73 = 4U;

unsigned char v23 (signed char v76, unsigned int v77, unsigned short v78, signed short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 3;
signed int v81 = 3;
unsigned short v80 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned char v85 = 6;
unsigned int v84 = 3U;
unsigned char v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
