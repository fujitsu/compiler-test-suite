#include <stdlib.h>
extern void v3 (signed short);
extern void (*v4) (signed short);
signed char v5 (unsigned int, unsigned short, signed short, signed char);
signed char (*v6) (unsigned int, unsigned short, signed short, signed char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (unsigned char, unsigned char, unsigned char, signed short);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned char, signed short);
extern signed char v11 (signed char, unsigned char, unsigned char);
extern signed char (*v12) (signed char, unsigned char, unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed short, unsigned short, unsigned int, unsigned short);
extern unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned short);
signed char v19 (unsigned char, unsigned int);
signed char (*v20) (unsigned char, unsigned int) = v19;
extern void v23 (void);
extern void (*v24) (void);
extern signed short v25 (unsigned short, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, signed char);
extern signed short v27 (signed short, signed short, unsigned short);
extern signed short (*v28) (signed short, signed short, unsigned short);
extern signed char v29 (signed int, signed int, unsigned int, unsigned int);
extern signed char (*v30) (signed int, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v89 = 3;
signed int v88 = 1;
signed int v87 = -1;

signed char v19 (unsigned char v90, unsigned int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 4U;
unsigned char v93 = 7;
signed char v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v95, unsigned short v96, signed short v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 2;
signed short v100 = 0;
unsigned char v99 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
