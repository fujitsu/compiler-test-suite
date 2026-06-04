#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char, signed short);
extern signed char (*v2) (signed int, unsigned int, signed char, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
unsigned char v11 (unsigned int, signed char, unsigned char);
unsigned char (*v12) (unsigned int, signed char, unsigned char) = v11;
extern signed char v13 (signed int, signed char);
extern signed char (*v14) (signed int, signed char);
extern unsigned short v15 (signed int, signed short, signed short);
extern unsigned short (*v16) (signed int, signed short, signed short);
unsigned int v17 (unsigned int, unsigned short);
unsigned int (*v18) (unsigned int, unsigned short) = v17;
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned int v25 (signed int, unsigned char, signed short);
extern unsigned int (*v26) (signed int, unsigned char, signed short);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short);
extern void (*v30) (unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v58 = 6U;
unsigned int v57 = 5U;
signed char v56 = -4;

unsigned int v17 (unsigned int v59, unsigned short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -1;
unsigned char v62 = 0;
unsigned int v61 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v64, signed char v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 3;
signed short v68 = -1;
signed short v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v72 = -2;
unsigned int v71 = 1U;
signed short v70 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
