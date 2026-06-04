#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned int v3 (signed short, signed char);
extern unsigned int (*v4) (signed short, signed char);
extern unsigned short v5 (signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed char, unsigned short, unsigned char);
extern unsigned short v7 (unsigned char, unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (unsigned char, unsigned char, unsigned short, signed char);
extern signed char (*v10) (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned short v17 (signed char, unsigned short);
unsigned short (*v18) (signed char, unsigned short) = v17;
unsigned char v19 (signed int, unsigned short);
unsigned char (*v20) (signed int, unsigned short) = v19;
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v68 = 2U;
unsigned short v67 = 2;
unsigned int v66 = 5U;

unsigned char v19 (signed int v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -2;
signed short v72 = -3;
unsigned char v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v74, unsigned short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 2;
unsigned char v77 = 0;
signed char v76 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
