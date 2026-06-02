#include <stdlib.h>
extern void v1 (signed short, unsigned char);
extern void (*v2) (signed short, unsigned char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern void v7 (unsigned short, signed char, unsigned int);
extern void (*v8) (unsigned short, signed char, unsigned int);
unsigned short v9 (unsigned short, unsigned char, signed int, unsigned char);
unsigned short (*v10) (unsigned short, unsigned char, signed int, unsigned char) = v9;
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
signed short v23 (unsigned short, unsigned int);
signed short (*v24) (unsigned short, unsigned int) = v23;
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern signed int v27 (signed short, signed int, signed int);
extern signed int (*v28) (signed short, signed int, signed int);
extern unsigned int v29 (signed short, signed int, unsigned int);
extern unsigned int (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = -4;
signed short v111 = -2;
signed char v110 = 2;

signed short v23 (unsigned short v113, unsigned int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = 0;
signed char v116 = 0;
signed int v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v118, unsigned char v119, signed int v120, unsigned char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 0;
signed char v123 = -1;
signed int v122 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
