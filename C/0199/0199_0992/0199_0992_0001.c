#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (unsigned char, signed int, signed short);
extern unsigned short (*v6) (unsigned char, signed int, signed short);
extern void v7 (void);
extern void (*v8) (void);
signed char v9 (signed short, unsigned short, signed char, signed int);
signed char (*v10) (signed short, unsigned short, signed char, signed int) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (signed int, signed short, unsigned short);
extern unsigned int (*v14) (signed int, signed short, unsigned short);
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned int, unsigned short);
extern unsigned char (*v20) (unsigned int, unsigned short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v51 = 3;
unsigned char v50 = 4;
unsigned int v49 = 4U;

signed char v9 (signed short v52, unsigned short v53, signed char v54, signed int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -1;
unsigned int v57 = 3U;
signed short v56 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
