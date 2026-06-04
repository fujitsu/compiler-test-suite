#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned int);
extern void (*v2) (signed char, signed char, unsigned int);
extern signed short v3 (signed int, unsigned char, unsigned short, signed int);
extern signed short (*v4) (signed int, unsigned char, unsigned short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned char, signed int);
extern unsigned char (*v12) (unsigned int, unsigned char, signed int);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
signed int v15 (unsigned int, signed int, unsigned char, signed int);
signed int (*v16) (unsigned int, signed int, unsigned char, signed int) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
extern unsigned char v21 (signed char, signed int);
extern unsigned char (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned int, unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned char v29 (unsigned short, signed char, unsigned int, signed char);
extern unsigned char (*v30) (unsigned short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = 3;
unsigned short v61 = 0;
unsigned char v60 = 4;

void v17 (void)
{
{
for (;;) {
signed int v65 = 1;
unsigned int v64 = 2U;
signed int v63 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned int v66, signed int v67, unsigned char v68, signed int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 1;
signed char v71 = 2;
signed int v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
