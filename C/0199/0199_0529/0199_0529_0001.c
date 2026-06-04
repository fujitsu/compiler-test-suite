#include <stdlib.h>
extern unsigned short v3 (signed int, signed short);
extern unsigned short (*v4) (signed int, signed short);
extern void v5 (signed char, signed short, signed int, signed int);
extern void (*v6) (signed char, signed short, signed int, signed int);
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
unsigned int v9 (unsigned int, signed char, unsigned char, signed short);
unsigned int (*v10) (unsigned int, signed char, unsigned char, signed short) = v9;
extern unsigned int v11 (unsigned char, signed short);
extern unsigned int (*v12) (unsigned char, signed short);
extern void v13 (unsigned char, unsigned short, signed int, unsigned char);
extern void (*v14) (unsigned char, unsigned short, signed int, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed char, signed char);
extern signed char (*v24) (signed char, signed char);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v69 = 1U;
signed char v68 = -1;
unsigned char v67 = 6;

unsigned int v9 (unsigned int v70, signed char v71, unsigned char v72, signed short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -1;
signed int v75 = -1;
unsigned short v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
