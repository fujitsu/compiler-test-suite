#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned char);
extern unsigned short (*v2) (signed short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
unsigned char v7 (signed int);
unsigned char (*v8) (signed int) = v7;
extern signed int v9 (unsigned char, signed short, unsigned short, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned short, signed int);
void v11 (unsigned char, unsigned char);
void (*v12) (unsigned char, unsigned char) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed int v17 (unsigned int, signed char, signed char);
extern signed int (*v18) (unsigned int, signed char, signed char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned short v21 (signed int, unsigned short, signed int);
extern unsigned short (*v22) (signed int, unsigned short, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, unsigned short, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned short, signed int, signed char);
extern void (*v28) (unsigned short, signed int, signed char);
extern unsigned char v29 (signed int, signed char, unsigned short);
extern unsigned char (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v46 = 7U;
signed char v45 = -4;
signed char v44 = 2;

void v11 (unsigned char v47, unsigned char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 2U;
signed char v50 = -3;
signed char v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 1;
signed int v54 = -2;
unsigned int v53 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
