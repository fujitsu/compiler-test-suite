#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (unsigned int, unsigned int, signed short);
extern signed int (*v8) (unsigned int, unsigned int, signed short);
extern unsigned short v9 (unsigned char, signed short, signed short);
extern unsigned short (*v10) (unsigned char, signed short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned short v17 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, signed char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed char v25 (signed short, unsigned short, unsigned int);
extern signed char (*v26) (signed short, unsigned short, unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
void v29 (signed char, signed int, signed short, signed short);
void (*v30) (signed char, signed int, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = 0;
unsigned short v106 = 7;
unsigned int v105 = 1U;

void v29 (signed char v108, signed int v109, signed short v110, signed short v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = 1;
signed short v113 = -1;
signed char v112 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed short v117 = -2;
signed int v116 = -2;
signed int v115 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
