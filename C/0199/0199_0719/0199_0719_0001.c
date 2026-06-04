#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short);
extern signed char (*v2) (unsigned char, unsigned short);
extern unsigned short v3 (signed char, signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed char, signed int, signed int);
extern signed char v5 (signed char, signed int, unsigned int);
extern signed char (*v6) (signed char, signed int, unsigned int);
extern void v7 (signed char, signed char);
extern void (*v8) (signed char, signed char);
extern void v9 (void);
extern void (*v10) (void);
signed short v11 (unsigned char, unsigned short, unsigned int, unsigned int);
signed short (*v12) (unsigned char, unsigned short, unsigned int, unsigned int) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern void v15 (signed char, unsigned char);
extern void (*v16) (signed char, unsigned char);
extern signed char v17 (signed short, signed int);
extern signed char (*v18) (signed short, signed int);
extern unsigned short v19 (signed char, signed int, signed char);
extern unsigned short (*v20) (signed char, signed int, signed char);
extern unsigned short v21 (signed char, unsigned int, signed char);
extern unsigned short (*v22) (signed char, unsigned int, signed char);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
extern signed char v25 (signed int, signed int, signed char, signed short);
extern signed char (*v26) (signed int, signed int, signed char, signed short);
extern unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 0;
unsigned int v65 = 0U;
signed short v64 = -3;

void v29 (void)
{
{
for (;;) {
signed char v69 = 1;
signed short v68 = 1;
signed char v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v70, unsigned short v71, unsigned int v72, unsigned int v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 6U;
signed char v75 = -1;
unsigned int v74 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
