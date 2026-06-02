#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (signed int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
extern void v15 (void);
extern void (*v16) (void);
signed short v17 (signed char, unsigned int, signed char);
signed short (*v18) (signed char, unsigned int, signed char) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (signed char, signed char, signed short);
extern signed int (*v22) (signed char, signed char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern signed short v25 (signed int, unsigned int, signed short, signed int);
extern signed short (*v26) (signed int, unsigned int, signed short, signed int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern signed char v29 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v57 = -3;
unsigned char v56 = 3;
unsigned int v55 = 1U;

unsigned char v19 (void)
{
{
for (;;) {
unsigned int v60 = 0U;
unsigned short v59 = 4;
signed int v58 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v61, unsigned int v62, signed char v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 2;
unsigned char v65 = 4;
unsigned int v64 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
