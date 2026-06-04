#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned int v3 (signed int, unsigned short);
extern unsigned int (*v4) (signed int, unsigned short);
extern signed int v5 (signed int, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed short v9 (unsigned short, signed char, signed short, unsigned short);
extern signed short (*v10) (unsigned short, signed char, signed short, unsigned short);
extern signed short v11 (signed short, unsigned char);
extern signed short (*v12) (signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (signed int, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char);
extern void v19 (unsigned short, signed char, signed char, signed char);
extern void (*v20) (unsigned short, signed char, signed char, signed char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
signed char v23 (signed char, unsigned short, unsigned int);
signed char (*v24) (signed char, unsigned short, unsigned int) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v46 = -1;
signed short v45 = 2;
signed short v44 = 1;

signed char v23 (signed char v47, unsigned short v48, unsigned int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 0;
signed char v51 = 3;
unsigned short v50 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
