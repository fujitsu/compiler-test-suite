#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
signed short v7 (void);
signed short (*v8) (void) = v7;
unsigned int v9 (unsigned short, unsigned int);
unsigned int (*v10) (unsigned short, unsigned int) = v9;
extern signed char v11 (signed char, signed char, unsigned int);
extern signed char (*v12) (signed char, signed char, unsigned int);
extern void v13 (signed int, unsigned char, unsigned char, signed int);
extern void (*v14) (signed int, unsigned char, unsigned char, signed int);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (signed short, signed short, unsigned short);
signed short (*v18) (signed short, signed short, unsigned short) = v17;
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed short v29 (unsigned int, signed char, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v90 = 0;
signed short v89 = -4;
signed int v88 = 2;

signed short v17 (signed short v91, signed short v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -4;
signed char v95 = -1;
signed int v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v97, unsigned int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 1;
unsigned char v100 = 2;
signed char v99 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned int v104 = 0U;
unsigned short v103 = 7;
unsigned short v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
