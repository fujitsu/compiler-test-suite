#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, signed short);
extern unsigned char (*v2) (signed int, unsigned char, signed short);
unsigned short v3 (unsigned int, signed char);
unsigned short (*v4) (unsigned int, signed char) = v3;
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed short);
extern unsigned int (*v16) (signed char, signed short);
extern unsigned char v17 (unsigned char, signed short, signed short, signed char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, signed char);
extern unsigned short v19 (signed char, signed int, unsigned short);
extern unsigned short (*v20) (signed char, signed int, unsigned short);
extern signed short v21 (unsigned int);
extern signed short (*v22) (unsigned int);
extern signed char v23 (signed char, unsigned int, unsigned short);
extern signed char (*v24) (signed char, unsigned int, unsigned short);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern void v29 (unsigned char, unsigned int, signed int, signed char);
extern void (*v30) (unsigned char, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 6;
unsigned char v99 = 4;
signed short v98 = -1;

unsigned short v3 (unsigned int v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 2;
signed char v104 = -3;
unsigned short v103 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
