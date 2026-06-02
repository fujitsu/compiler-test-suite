#include <stdlib.h>
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
extern signed char v7 (unsigned char, signed short, signed char, signed char);
extern signed char (*v8) (unsigned char, signed short, signed char, signed char);
extern signed int v9 (signed short, signed int, signed short, signed int);
extern signed int (*v10) (signed short, signed int, signed short, signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
signed short v13 (signed short, signed short);
signed short (*v14) (signed short, signed short) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
unsigned short v27 (signed int, signed short, signed short, unsigned int);
unsigned short (*v28) (signed int, signed short, signed short, unsigned int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = 3;
unsigned int v74 = 0U;
signed int v73 = 3;

unsigned short v27 (signed int v76, signed short v77, signed short v78, unsigned int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 0;
signed int v81 = 0;
unsigned char v80 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v83, signed short v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 0;
unsigned int v86 = 0U;
unsigned char v85 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
