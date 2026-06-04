#include <stdlib.h>
extern signed char v3 (unsigned int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, unsigned char, signed short);
extern unsigned int v5 (unsigned int, signed char, signed int);
extern unsigned int (*v6) (unsigned int, signed char, signed int);
signed short v7 (signed int, signed short, unsigned char, unsigned char);
signed short (*v8) (signed int, signed short, unsigned char, unsigned char) = v7;
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern signed int v11 (signed short, unsigned short, signed short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, signed short, unsigned char);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short);
extern signed short (*v18) (unsigned char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed char, signed int, signed char);
extern unsigned int (*v28) (signed char, signed int, signed char);
signed int v29 (unsigned short, unsigned int);
signed int (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v75 = 3;
unsigned int v74 = 7U;
unsigned int v73 = 6U;

signed int v29 (unsigned short v76, unsigned int v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 1U;
signed char v79 = 3;
signed short v78 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v81, signed short v82, unsigned char v83, unsigned char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 3;
signed short v86 = -4;
signed int v85 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
