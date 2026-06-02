#include <stdlib.h>
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (unsigned char, signed short);
extern signed int (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, signed char, unsigned char, signed char);
extern void v17 (signed char, unsigned char, signed char);
extern void (*v18) (signed char, unsigned char, signed char);
unsigned short v19 (unsigned int, signed int, signed char);
unsigned short (*v20) (unsigned int, signed int, signed char) = v19;
void v21 (signed short, signed char, unsigned int);
void (*v22) (signed short, signed char, unsigned int) = v21;
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern void v25 (unsigned short, signed short);
extern void (*v26) (unsigned short, signed short);
extern unsigned short v27 (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 6U;
signed char v70 = 2;
signed char v69 = -4;

void v21 (signed short v72, signed char v73, unsigned int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 1;
unsigned char v76 = 5;
signed short v75 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v78, signed int v79, signed char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -3;
unsigned int v82 = 6U;
signed char v81 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
