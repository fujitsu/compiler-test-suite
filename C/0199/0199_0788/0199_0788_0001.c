#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned char v5 (signed short, signed short, signed short);
extern unsigned char (*v6) (signed short, signed short, signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern void v9 (signed short, unsigned short, unsigned char);
extern void (*v10) (signed short, unsigned short, unsigned char);
extern void v11 (unsigned int, unsigned short, unsigned char);
extern void (*v12) (unsigned int, unsigned short, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern signed short v21 (signed char, unsigned int, unsigned char, signed int);
extern signed short (*v22) (signed char, unsigned int, unsigned char, signed int);
extern void v23 (void);
extern void (*v24) (void);
signed int v25 (signed short, signed int, signed char, unsigned int);
signed int (*v26) (signed short, signed int, signed char, unsigned int) = v25;
extern signed short v27 (signed char, signed char);
extern signed short (*v28) (signed char, signed char);
extern signed short v29 (signed short, signed int, unsigned char, signed short);
extern signed short (*v30) (signed short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 5;
signed char v67 = 3;
unsigned short v66 = 2;

signed int v25 (signed short v69, signed int v70, signed char v71, unsigned int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -3;
signed short v74 = 3;
signed char v73 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
