#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned short v5 (signed int, unsigned char, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, unsigned char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (unsigned short, unsigned char);
extern void (*v10) (unsigned short, unsigned char);
signed int v13 (signed short, signed int);
signed int (*v14) (signed short, signed int) = v13;
extern signed short v15 (unsigned char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed char, signed char, unsigned char, unsigned int);
extern signed int (*v22) (signed char, signed char, unsigned char, unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v27 (signed int, signed short, unsigned char, signed int);
extern signed char (*v28) (signed int, signed short, unsigned char, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 0;
signed short v56 = -4;
signed int v55 = 0;

signed int v13 (signed short v58, signed int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 4;
unsigned short v61 = 4;
signed char v60 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
