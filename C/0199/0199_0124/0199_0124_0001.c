#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed int);
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern void v5 (signed int, unsigned char, signed short, unsigned char);
extern void (*v6) (signed int, unsigned char, signed short, unsigned char);
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
extern unsigned short v9 (unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, signed int);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern unsigned int v17 (unsigned int, signed short, signed char, signed short);
extern unsigned int (*v18) (unsigned int, signed short, signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern signed short v23 (signed short, unsigned short);
extern signed short (*v24) (signed short, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v29 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 0;
unsigned int v70 = 7U;
signed char v69 = 3;

signed int v21 (void)
{
{
for (;;) {
unsigned int v74 = 3U;
unsigned char v73 = 0;
signed int v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -2;
signed short v77 = 2;
unsigned char v76 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
