#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned char v5 (signed int, signed short, unsigned short);
extern unsigned char (*v6) (signed int, signed short, unsigned short);
extern signed short v9 (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned char, unsigned short, unsigned int, unsigned int);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
void v15 (signed short, unsigned char);
void (*v16) (signed short, unsigned char) = v15;
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern signed int v19 (signed char, unsigned short);
extern signed int (*v20) (signed char, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, unsigned char, unsigned char);
extern void (*v24) (unsigned int, unsigned char, unsigned char);
extern signed short v25 (signed int, signed int, signed char);
extern signed short (*v26) (signed int, signed int, signed char);
extern unsigned short v27 (signed int, signed short);
extern unsigned short (*v28) (signed int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v108 = 5;
unsigned char v107 = 6;
unsigned int v106 = 5U;

void v15 (signed short v109, unsigned char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 4;
unsigned short v112 = 7;
unsigned char v111 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
