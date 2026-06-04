#include <stdlib.h>
extern unsigned int v1 (signed char, signed short);
extern unsigned int (*v2) (signed char, signed short);
extern unsigned short v3 (unsigned short, unsigned int);
extern unsigned short (*v4) (unsigned short, unsigned int);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
void v9 (signed short);
void (*v10) (signed short) = v9;
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern unsigned int v13 (signed short, signed short);
extern unsigned int (*v14) (signed short, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned short, signed short, unsigned char, signed short);
extern void (*v18) (unsigned short, signed short, unsigned char, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v29 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v30) (unsigned short, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = -4;
signed short v58 = 1;
signed short v57 = -1;

signed int v21 (void)
{
{
for (;;) {
unsigned char v62 = 1;
unsigned short v61 = 5;
unsigned int v60 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 4;
signed char v65 = -2;
signed char v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
