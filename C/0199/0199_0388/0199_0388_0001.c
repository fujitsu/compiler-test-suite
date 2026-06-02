#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned char, signed short, unsigned short);
extern signed int (*v6) (unsigned char, signed short, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int);
extern unsigned short (*v8) (signed short, unsigned char, signed int);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern signed short v19 (signed short, unsigned char, unsigned short, signed short);
extern signed short (*v20) (signed short, unsigned char, unsigned short, signed short);
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned short, unsigned short, signed short, signed short);
extern unsigned short (*v24) (unsigned short, unsigned short, signed short, signed short);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern unsigned short v27 (signed short, unsigned int, unsigned short);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short);
signed short v29 (unsigned char, signed char, unsigned int);
signed short (*v30) (unsigned char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v46 = -4;
unsigned short v45 = 2;
unsigned char v44 = 1;

signed short v29 (unsigned char v47, signed char v48, unsigned int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 6;
unsigned char v51 = 4;
signed char v50 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
