#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char);
extern signed int (*v2) (unsigned char, unsigned char);
signed char v3 (signed short, signed char);
signed char (*v4) (signed short, signed char) = v3;
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern void v17 (unsigned char, signed char, unsigned short, signed int);
extern void (*v18) (unsigned char, signed char, unsigned short, signed int);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern unsigned short v23 (unsigned int, signed char, signed short);
extern unsigned short (*v24) (unsigned int, signed char, signed short);
extern signed short v25 (unsigned int, unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, unsigned int, signed char, unsigned short);
extern unsigned short v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = 3;
signed char v108 = 1;
unsigned short v107 = 2;

signed char v7 (void)
{
{
for (;;) {
signed int v112 = 2;
signed int v111 = 1;
unsigned short v110 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v113, signed char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 6;
signed short v116 = -3;
signed short v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
