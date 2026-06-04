#include <stdlib.h>
void v3 (void);
void (*v4) (void) = v3;
extern void v5 (signed char);
extern void (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v10) (unsigned char, signed int, unsigned int, unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned int v15 (unsigned char, signed short);
unsigned int (*v16) (unsigned char, signed short) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
extern unsigned short v25 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned char, signed short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned short, unsigned int);
extern signed char (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 0;
unsigned char v70 = 1;
signed int v69 = -1;

unsigned int v15 (unsigned char v72, signed short v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 2;
unsigned char v75 = 1;
unsigned char v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed int v79 = -1;
signed int v78 = 1;
signed char v77 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
