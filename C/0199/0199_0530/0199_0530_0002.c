#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned short v5 (signed int, unsigned char, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, unsigned char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (unsigned short, unsigned char);
extern void (*v10) (unsigned short, unsigned char);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
signed short v15 (unsigned char, signed short, unsigned int, unsigned short);
signed short (*v16) (unsigned char, signed short, unsigned int, unsigned short) = v15;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (signed char, signed char, unsigned char, unsigned int);
signed int (*v22) (signed char, signed char, unsigned char, unsigned int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v27 (signed int, signed short, unsigned char, signed int);
extern signed char (*v28) (signed int, signed short, unsigned char, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 6U;
unsigned short v64 = 4;
unsigned int v63 = 5U;

signed int v21 (signed char v66, signed char v67, unsigned char v68, unsigned int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -2;
unsigned char v71 = 4;
signed int v70 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v73, signed short v74, unsigned int v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -4;
unsigned short v78 = 4;
signed short v77 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
