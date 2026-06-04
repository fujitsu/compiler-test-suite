#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, unsigned short);
unsigned char v5 (unsigned int, unsigned short);
unsigned char (*v6) (unsigned int, unsigned short) = v5;
extern unsigned int v7 (signed char, signed short, unsigned short);
extern unsigned int (*v8) (signed char, signed short, unsigned short);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (unsigned char, unsigned int, signed short);
extern signed int (*v16) (unsigned char, unsigned int, signed short);
extern signed short v19 (unsigned short, signed short, signed char);
extern signed short (*v20) (unsigned short, signed short, signed char);
extern void v21 (void);
extern void (*v22) (void);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
extern signed char v27 (signed int, unsigned short, signed char, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed char, unsigned char);
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v89 = 3;
unsigned short v88 = 7;
unsigned char v87 = 6;

unsigned short v23 (void)
{
{
for (;;) {
signed short v92 = 1;
signed int v91 = 3;
unsigned short v90 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned char v95 = 4;
signed short v94 = 1;
signed int v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 1;
signed int v99 = 3;
unsigned short v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
