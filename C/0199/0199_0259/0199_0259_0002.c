#include <stdlib.h>
extern unsigned short v1 (signed short, signed int, signed int);
extern unsigned short (*v2) (signed short, signed int, signed int);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed short v13 (signed int, unsigned int);
extern signed short (*v14) (signed int, unsigned int);
void v15 (signed int, signed char, signed short);
void (*v16) (signed int, signed char, signed short) = v15;
extern void v17 (unsigned int, signed short);
extern void (*v18) (unsigned int, signed short);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned int, unsigned int, signed short, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v73 = 6;
signed short v72 = -1;
signed short v71 = -1;

void v15 (signed int v74, signed char v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 1U;
unsigned int v78 = 2U;
signed int v77 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
