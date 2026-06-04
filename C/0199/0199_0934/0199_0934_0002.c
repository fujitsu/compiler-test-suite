#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned char);
extern void (*v2) (signed char, signed char, unsigned char);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
unsigned int v13 (signed short, signed char, signed short, unsigned char);
unsigned int (*v14) (signed short, signed char, signed short, unsigned char) = v13;
extern void v15 (signed short, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned int);
extern signed short (*v18) (signed char, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned int, signed int, unsigned short);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v66 = 2;
unsigned short v65 = 7;
unsigned int v64 = 3U;

unsigned int v13 (signed short v67, signed char v68, signed short v69, unsigned char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 7U;
unsigned char v72 = 6;
signed char v71 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed char v76 = -4;
unsigned int v75 = 0U;
signed int v74 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
