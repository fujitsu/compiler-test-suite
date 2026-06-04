#include <stdlib.h>
extern signed char v1 (unsigned short, signed char);
extern signed char (*v2) (unsigned short, signed char);
extern signed char v3 (signed short, signed int, signed char);
extern signed char (*v4) (signed short, signed int, signed char);
extern signed short v5 (signed short, signed short);
extern signed short (*v6) (signed short, signed short);
signed int v9 (signed short, unsigned char, signed short);
signed int (*v10) (signed short, unsigned char, signed short) = v9;
extern signed short v11 (unsigned int, signed char);
extern signed short (*v12) (unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern signed char v19 (signed int, unsigned short, signed int, signed char);
extern signed char (*v20) (signed int, unsigned short, signed int, signed char);
signed short v21 (unsigned int, signed char, signed int, signed char);
signed short (*v22) (unsigned int, signed char, signed int, signed char) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v73 = 6;
unsigned int v72 = 1U;
signed int v71 = -2;

signed short v21 (unsigned int v74, signed char v75, signed int v76, signed char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 2;
unsigned char v79 = 0;
signed int v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed short v81, unsigned char v82, signed short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 4;
unsigned short v85 = 0;
signed char v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
