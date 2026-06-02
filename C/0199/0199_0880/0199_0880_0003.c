#include <stdlib.h>
extern signed short v1 (unsigned short, signed char);
extern signed short (*v2) (unsigned short, signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed short, signed short, signed int);
extern void (*v6) (signed short, signed short, signed short, signed int);
unsigned char v7 (signed char, signed short);
unsigned char (*v8) (signed char, signed short) = v7;
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
extern signed int v11 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v12) (unsigned int, signed short, signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short, unsigned short);
extern void v17 (signed short, signed short, signed short);
extern void (*v18) (signed short, signed short, signed short);
extern unsigned char v19 (signed char, signed char, signed short);
extern unsigned char (*v20) (signed char, signed char, signed short);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned int v27 (unsigned int);
unsigned int (*v28) (unsigned int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 3;
signed int v108 = 0;
unsigned char v107 = 3;

unsigned int v27 (unsigned int v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 2U;
unsigned char v112 = 4;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v114, signed short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 4U;
signed int v117 = 2;
unsigned int v116 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
