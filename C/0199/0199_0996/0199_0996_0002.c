#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
signed short v5 (unsigned char);
signed short (*v6) (unsigned char) = v5;
extern signed int v7 (unsigned char, signed char, signed char);
extern signed int (*v8) (unsigned char, signed char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
signed char v11 (unsigned int);
signed char (*v12) (unsigned int) = v11;
extern signed short v13 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v14) (signed int, unsigned char, unsigned char, signed int);
unsigned int v15 (unsigned int, unsigned short, signed int);
unsigned int (*v16) (unsigned int, unsigned short, signed int) = v15;
extern signed int v17 (signed int, signed int, unsigned short);
extern signed int (*v18) (signed int, signed int, unsigned short);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = 3;
unsigned int v69 = 6U;
unsigned short v68 = 6;

unsigned int v15 (unsigned int v71, unsigned short v72, signed int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 2;
signed int v75 = 1;
unsigned short v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 4;
signed short v79 = 1;
unsigned char v78 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 1;
unsigned char v83 = 5;
signed int v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
