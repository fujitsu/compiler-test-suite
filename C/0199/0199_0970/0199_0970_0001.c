#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed int, signed char, unsigned int);
extern signed int (*v4) (signed int, signed char, unsigned int);
extern signed int v5 (signed char, signed char, unsigned int);
extern signed int (*v6) (signed char, signed char, unsigned int);
signed char v7 (unsigned short);
signed char (*v8) (unsigned short) = v7;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned int);
extern unsigned int v15 (unsigned short, signed char, unsigned char);
extern unsigned int (*v16) (unsigned short, signed char, unsigned char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed char v21 (unsigned int, signed short, unsigned short);
extern signed char (*v22) (unsigned int, signed short, unsigned short);
signed char v23 (signed int);
signed char (*v24) (signed int) = v23;
signed char v27 (void);
signed char (*v28) (void) = v27;
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v56 = 2;
unsigned int v55 = 6U;
signed int v54 = 1;

signed char v27 (void)
{
{
for (;;) {
signed short v59 = -2;
unsigned char v58 = 2;
signed short v57 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 4;
signed char v62 = -2;
unsigned int v61 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 4;
signed char v66 = -3;
unsigned short v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
