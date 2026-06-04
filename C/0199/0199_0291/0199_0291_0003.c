#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, signed char, unsigned char);
extern signed char (*v2) (signed char, unsigned short, signed char, unsigned char);
extern unsigned short v3 (signed char, signed char);
extern unsigned short (*v4) (signed char, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
unsigned char v9 (signed short, unsigned short);
unsigned char (*v10) (signed short, unsigned short) = v9;
extern void v11 (signed int);
extern void (*v12) (signed int);
extern unsigned char v13 (signed int, unsigned int, signed char, signed short);
extern unsigned char (*v14) (signed int, unsigned int, signed char, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (unsigned char, unsigned int, unsigned char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned char);
unsigned int v19 (unsigned char);
unsigned int (*v20) (unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, signed short, unsigned int);
extern signed int v25 (unsigned short, signed char);
extern signed int (*v26) (unsigned short, signed char);
extern unsigned int v27 (unsigned int, unsigned int, signed char);
extern unsigned int (*v28) (unsigned int, unsigned int, signed char);
extern signed char v29 (signed char, signed char, signed char, signed int);
extern signed char (*v30) (signed char, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v108 = 3;
signed short v107 = -1;
unsigned int v106 = 7U;

unsigned int v19 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = -1;
unsigned char v111 = 2;
unsigned int v110 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v113, unsigned short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 3U;
unsigned int v116 = 5U;
signed short v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
