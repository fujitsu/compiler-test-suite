#include <stdlib.h>
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed int v5 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v6) (signed int, unsigned char, unsigned char, signed short);
unsigned int v7 (unsigned int, unsigned int, unsigned char);
unsigned int (*v8) (unsigned int, unsigned int, unsigned char) = v7;
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed int v11 (signed char, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, unsigned short);
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned short v21 (unsigned int, signed char, signed int, unsigned short);
extern unsigned short (*v22) (unsigned int, signed char, signed int, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v27 (unsigned char, signed short, signed int);
extern signed int (*v28) (unsigned char, signed short, signed int);
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v83 = 4U;
signed int v82 = 1;
signed int v81 = -3;

unsigned char v9 (void)
{
{
for (;;) {
unsigned short v86 = 0;
unsigned char v85 = 2;
unsigned char v84 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v87, unsigned int v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 5;
unsigned int v91 = 3U;
signed int v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
