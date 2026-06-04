#include <stdlib.h>
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
extern signed short v5 (signed short, unsigned char);
extern signed short (*v6) (signed short, unsigned char);
unsigned short v7 (unsigned int, unsigned int, signed short);
unsigned short (*v8) (unsigned int, unsigned int, signed short) = v7;
signed char v9 (unsigned int, unsigned int, signed short, unsigned char);
signed char (*v10) (unsigned int, unsigned int, signed short, unsigned char) = v9;
extern unsigned int v11 (signed short, unsigned char, signed int, signed char);
extern unsigned int (*v12) (signed short, unsigned char, signed int, signed char);
extern signed short v13 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v14) (signed int, unsigned char, signed char, unsigned int);
extern signed char v15 (signed int, signed int, unsigned short);
extern signed char (*v16) (signed int, signed int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed char, unsigned char, signed int, signed short);
extern void (*v24) (signed char, unsigned char, signed int, signed short);
extern unsigned short v25 (signed short, signed short);
extern unsigned short (*v26) (signed short, signed short);
extern unsigned char v27 (signed short, signed short, unsigned char);
extern unsigned char (*v28) (signed short, signed short, unsigned char);
extern signed int v29 (signed char, signed char, unsigned char);
extern signed int (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v70 = 6;
unsigned char v69 = 3;
unsigned char v68 = 7;

signed char v9 (unsigned int v71, unsigned int v72, signed short v73, unsigned char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 6;
signed short v76 = 1;
unsigned char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v78, unsigned int v79, signed short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -4;
unsigned int v82 = 0U;
unsigned int v81 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
