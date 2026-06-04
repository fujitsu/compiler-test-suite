#include <stdlib.h>
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern unsigned short v11 (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v12) (signed short, unsigned short, unsigned char, unsigned char);
extern void v13 (signed char);
extern void (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
unsigned char v25 (signed char, signed int, signed int, signed int);
unsigned char (*v26) (signed char, signed int, signed int, signed int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 2U;
unsigned char v100 = 0;
signed short v99 = 2;

unsigned char v25 (signed char v102, signed int v103, signed int v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 0;
signed char v107 = -2;
signed char v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
