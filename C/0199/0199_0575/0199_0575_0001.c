#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, unsigned short, unsigned short);
extern void (*v4) (signed short, unsigned short, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, unsigned char);
extern signed short (*v8) (signed int, unsigned char);
extern unsigned int v9 (signed char, unsigned int);
extern unsigned int (*v10) (signed char, unsigned int);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
extern signed int v15 (signed short, unsigned char, signed short);
extern signed int (*v16) (signed short, unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (signed char, signed char);
extern unsigned int (*v20) (signed char, signed char);
extern signed int v21 (unsigned int, unsigned short, signed short);
extern signed int (*v22) (unsigned int, unsigned short, signed short);
extern unsigned int v23 (signed char, unsigned int, unsigned int);
extern unsigned int (*v24) (signed char, unsigned int, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned short v27 (signed int, unsigned int);
unsigned short (*v28) (signed int, unsigned int) = v27;
extern void v29 (unsigned int, signed char, signed int);
extern void (*v30) (unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = 2;
unsigned char v61 = 5;
signed short v60 = 2;

unsigned short v27 (signed int v63, unsigned int v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -1;
signed int v66 = 0;
unsigned short v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
