#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed short, signed short);
extern signed int (*v2) (signed char, unsigned int, signed short, signed short);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned int v11 (unsigned char, unsigned int, unsigned char, unsigned short);
unsigned int (*v12) (unsigned char, unsigned int, unsigned char, unsigned short) = v11;
signed char v13 (signed int, unsigned int);
signed char (*v14) (signed int, unsigned int) = v13;
extern unsigned char v15 (unsigned int, signed int, signed char);
extern unsigned char (*v16) (unsigned int, signed int, signed char);
extern signed int v17 (signed int, unsigned int, signed short);
extern signed int (*v18) (signed int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned char v27 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v28) (signed int, signed char, unsigned int, unsigned int);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 6;
unsigned char v70 = 0;
signed short v69 = -2;

signed char v13 (signed int v72, unsigned int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 4;
unsigned short v75 = 1;
signed int v74 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v77, unsigned int v78, unsigned char v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 6;
unsigned char v82 = 0;
signed short v81 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
