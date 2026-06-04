#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
signed char v5 (signed short);
signed char (*v6) (signed short) = v5;
extern unsigned int v7 (unsigned int, signed int, signed short, signed char);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed char);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned short v17 (unsigned short);
unsigned short (*v18) (unsigned short) = v17;
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed short v27 (signed short, unsigned short, signed int, signed int);
extern signed short (*v28) (signed short, unsigned short, signed int, signed int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = 3;
signed int v98 = 3;
unsigned int v97 = 3U;

unsigned int v23 (void)
{
{
for (;;) {
unsigned char v102 = 0;
signed int v101 = 2;
unsigned int v100 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 2U;
signed char v105 = -3;
signed char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 1;
signed int v109 = -1;
signed char v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
