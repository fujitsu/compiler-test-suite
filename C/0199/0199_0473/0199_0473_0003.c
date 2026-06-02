#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
signed int v7 (signed char, unsigned char, unsigned short, unsigned int);
signed int (*v8) (signed char, unsigned char, unsigned short, unsigned int) = v7;
extern unsigned short v9 (unsigned int, signed short, unsigned int, signed short);
extern unsigned short (*v10) (unsigned int, signed short, unsigned int, signed short);
extern unsigned char v11 (signed short, unsigned int);
extern unsigned char (*v12) (signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned int, unsigned int);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
signed short v21 (unsigned short, unsigned char, signed char);
signed short (*v22) (unsigned short, unsigned char, signed char) = v21;
extern unsigned short v23 (unsigned int, signed char);
extern unsigned short (*v24) (unsigned int, signed char);
extern unsigned short v25 (signed int, unsigned int, unsigned char, signed short);
extern unsigned short (*v26) (signed int, unsigned int, unsigned char, signed short);
extern unsigned char v27 (signed short, unsigned char, signed short, unsigned int);
extern unsigned char (*v28) (signed short, unsigned char, signed short, unsigned int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = -1;
signed short v105 = 0;
signed char v104 = 3;

signed short v21 (unsigned short v107, unsigned char v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -3;
signed short v111 = 3;
signed short v110 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v113, unsigned char v114, unsigned short v115, unsigned int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 6;
signed char v118 = -4;
signed int v117 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
