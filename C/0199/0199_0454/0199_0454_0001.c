#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern signed short v5 (signed int, signed short, signed char, signed short);
extern signed short (*v6) (signed int, signed short, signed char, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned short, signed int, signed char, signed char);
extern void (*v20) (unsigned short, signed int, signed char, signed char);
signed short v21 (signed char, unsigned int, signed short, unsigned short);
signed short (*v22) (signed char, unsigned int, signed short, unsigned short) = v21;
extern signed short v23 (signed short, signed short);
extern signed short (*v24) (signed short, signed short);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern void v27 (unsigned char, unsigned int);
extern void (*v28) (unsigned char, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 4;
unsigned char v69 = 5;
signed char v68 = 3;

signed char v25 (void)
{
{
for (;;) {
signed short v73 = -1;
signed char v72 = 0;
unsigned char v71 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed char v74, unsigned int v75, signed short v76, unsigned short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -3;
unsigned int v79 = 6U;
signed int v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v83 = 5;
signed int v82 = 2;
signed short v81 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
