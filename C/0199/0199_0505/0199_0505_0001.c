#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern unsigned int v5 (unsigned char, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed int, signed short, signed short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
void v13 (unsigned char, unsigned short);
void (*v14) (unsigned char, unsigned short) = v13;
extern void v15 (unsigned short, unsigned short);
extern void (*v16) (unsigned short, unsigned short);
extern unsigned short v17 (unsigned short, unsigned char, signed char, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned char, signed char, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned char, unsigned char, signed short);
extern signed char (*v22) (signed int, unsigned char, unsigned char, signed short);
extern unsigned short v23 (unsigned char, unsigned short, signed short);
extern unsigned short (*v24) (unsigned char, unsigned short, signed short);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
extern unsigned short v29 (unsigned int, signed short);
extern unsigned short (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = -3;
signed int v51 = -4;
unsigned short v50 = 4;

void v13 (unsigned char v53, unsigned short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -3;
unsigned short v56 = 4;
unsigned char v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed short v60 = -4;
unsigned int v59 = 5U;
signed short v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
