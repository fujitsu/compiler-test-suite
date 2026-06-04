#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned int, unsigned short, unsigned int);
extern unsigned char v3 (signed int, unsigned char, signed short);
extern unsigned char (*v4) (signed int, unsigned char, signed short);
extern void v5 (signed char, signed int, unsigned int, signed int);
extern void (*v6) (signed char, signed int, unsigned int, signed int);
extern signed short v7 (signed int, unsigned char, signed char);
extern signed short (*v8) (signed int, unsigned char, signed char);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed char v13 (signed short, signed short, unsigned short);
extern signed char (*v14) (signed short, signed short, unsigned short);
void v15 (signed int, signed char, signed short, unsigned int);
void (*v16) (signed int, signed char, signed short, unsigned int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned int);
extern unsigned int (*v20) (signed char, signed int, unsigned int);
extern void v21 (unsigned int, unsigned short);
extern void (*v22) (unsigned int, unsigned short);
extern signed int v23 (signed char, signed short, signed char);
extern signed int (*v24) (signed char, signed short, signed char);
extern signed short v25 (signed char, signed char, unsigned short);
extern signed short (*v26) (signed char, signed char, unsigned short);
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
extern signed char v29 (signed short, unsigned char, signed int, signed int);
extern signed char (*v30) (signed short, unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = 3;
signed char v58 = 1;
unsigned char v57 = 7;

void v27 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 4U;
unsigned char v62 = 4;
unsigned int v61 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v64, signed char v65, signed short v66, unsigned int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 1U;
signed short v69 = 3;
signed short v68 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
