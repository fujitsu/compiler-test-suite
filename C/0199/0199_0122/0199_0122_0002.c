#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
extern signed int v9 (unsigned short, signed int, signed short, unsigned int);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned int);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (signed char, unsigned int, signed int);
extern signed char (*v16) (signed char, unsigned int, signed int);
extern signed short v17 (signed short, signed short, unsigned char);
extern signed short (*v18) (signed short, signed short, unsigned char);
unsigned char v19 (unsigned char, signed char);
unsigned char (*v20) (unsigned char, signed char) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
signed char v23 (signed int, unsigned int, signed char);
signed char (*v24) (signed int, unsigned int, signed char) = v23;
extern void v25 (unsigned int, signed short, unsigned char);
extern void (*v26) (unsigned int, signed short, unsigned char);
extern signed short v29 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v30) (signed char, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v106 = -4;
unsigned char v105 = 5;
unsigned char v104 = 6;

signed char v23 (signed int v107, unsigned int v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 5;
unsigned char v111 = 2;
signed int v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v113, signed char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 7;
unsigned short v116 = 5;
unsigned int v115 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
