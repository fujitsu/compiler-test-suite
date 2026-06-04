#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned int, unsigned int, unsigned char, unsigned short);
extern void (*v8) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
signed int v15 (unsigned short, signed char, signed char, unsigned char);
signed int (*v16) (unsigned short, signed char, signed char, unsigned char) = v15;
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern void v19 (signed short, unsigned short);
extern void (*v20) (signed short, unsigned short);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned char);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = -2;
unsigned int v51 = 5U;
signed short v50 = 1;

signed int v15 (unsigned short v53, signed char v54, signed char v55, unsigned char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 0;
signed char v58 = -1;
unsigned short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
