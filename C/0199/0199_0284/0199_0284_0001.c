#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
void v7 (unsigned short, unsigned char, signed char);
void (*v8) (unsigned short, unsigned char, signed char) = v7;
void v9 (void);
void (*v10) (void) = v9;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v17 (unsigned int, unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int, unsigned int);
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
extern void v23 (signed short, signed int, signed int, unsigned int);
extern void (*v24) (signed short, signed int, signed int, unsigned int);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = 0;
unsigned int v57 = 5U;
unsigned char v56 = 2;

void v9 (void)
{
{
for (;;) {
unsigned short v61 = 0;
unsigned int v60 = 0U;
unsigned int v59 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v62, unsigned char v63, signed char v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 2;
unsigned char v66 = 7;
unsigned int v65 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
