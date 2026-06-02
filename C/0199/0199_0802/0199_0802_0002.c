#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (signed char, unsigned short, unsigned int, signed short);
extern void (*v8) (signed char, unsigned short, unsigned int, signed short);
unsigned int v9 (signed char, signed short, unsigned int, signed int);
unsigned int (*v10) (signed char, signed short, unsigned int, signed int) = v9;
unsigned short v11 (unsigned short);
unsigned short (*v12) (unsigned short) = v11;
extern signed int v13 (unsigned short, unsigned char, signed short);
extern signed int (*v14) (unsigned short, unsigned char, signed short);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (unsigned short, signed char, signed int);
extern unsigned char (*v18) (unsigned short, signed char, signed int);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern void v23 (unsigned int, signed char);
extern void (*v24) (unsigned int, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 0U;
signed char v72 = 0;
unsigned char v71 = 4;

unsigned short v11 (unsigned short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 3;
signed int v76 = -1;
signed char v75 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v78, signed short v79, unsigned int v80, signed int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 2;
unsigned short v83 = 3;
signed char v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
