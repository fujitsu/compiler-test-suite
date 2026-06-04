#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short, signed int, signed short, unsigned short);
extern signed int (*v4) (signed short, signed int, signed short, unsigned short);
extern signed int v5 (signed int, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short);
extern unsigned char v7 (signed int, signed char, signed short, unsigned char);
extern unsigned char (*v8) (signed int, signed char, signed short, unsigned char);
extern unsigned int v9 (signed short, signed int, unsigned int);
extern unsigned int (*v10) (signed short, signed int, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, unsigned int, unsigned int, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned int, signed short);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern signed int v17 (signed short, unsigned short, unsigned int, unsigned short);
extern signed int (*v18) (signed short, unsigned short, unsigned int, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char);
extern unsigned short (*v26) (unsigned short, unsigned char);
unsigned char v27 (unsigned int, signed int);
unsigned char (*v28) (unsigned int, signed int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = 0;
unsigned short v94 = 2;
unsigned int v93 = 3U;

unsigned char v27 (unsigned int v96, signed int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 6;
signed short v99 = 1;
signed int v98 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
