#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int, signed short);
extern signed char (*v2) (unsigned short, unsigned int, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
unsigned char v9 (signed char, unsigned short, unsigned char);
unsigned char (*v10) (signed char, unsigned short, unsigned char) = v9;
extern unsigned int v13 (unsigned int, signed char, signed int);
extern unsigned int (*v14) (unsigned int, signed char, signed int);
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
extern unsigned short v19 (signed char, signed short);
extern unsigned short (*v20) (signed char, signed short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v23 (signed int, signed char, signed char, signed short);
extern signed short (*v24) (signed int, signed char, signed char, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v71 = 3;
signed char v70 = 3;
signed char v69 = 0;

void v27 (void)
{
{
for (;;) {
signed short v74 = 1;
unsigned short v73 = 4;
unsigned char v72 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v75, unsigned short v76, unsigned char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 7;
unsigned char v79 = 7;
signed short v78 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
