#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, signed char);
extern signed int v5 (unsigned char, unsigned int, signed int);
extern signed int (*v6) (unsigned char, unsigned int, signed int);
extern signed short v7 (signed char, signed int, signed short);
extern signed short (*v8) (signed char, signed int, signed short);
extern void v9 (unsigned char, signed char, unsigned int);
extern void (*v10) (unsigned char, signed char, unsigned int);
extern unsigned char v11 (unsigned char, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short);
extern void v13 (unsigned char, unsigned short, signed short, unsigned int);
extern void (*v14) (unsigned char, unsigned short, signed short, unsigned int);
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern void v17 (unsigned int, unsigned char, signed int);
extern void (*v18) (unsigned int, unsigned char, signed int);
void v19 (unsigned char, unsigned char, unsigned short, unsigned int);
void (*v20) (unsigned char, unsigned char, unsigned short, unsigned int) = v19;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 0U;
unsigned short v85 = 5;
unsigned char v84 = 5;

void v19 (unsigned char v87, unsigned char v88, unsigned short v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 6;
signed short v92 = 0;
unsigned int v91 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
