#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
signed char v3 (unsigned int, signed short, unsigned char, signed char);
signed char (*v4) (unsigned int, signed short, unsigned char, signed char) = v3;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed char v9 (unsigned short, unsigned int, signed char);
extern signed char (*v10) (unsigned short, unsigned int, signed char);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern signed char v13 (unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char);
extern unsigned char v15 (signed int, unsigned short);
extern unsigned char (*v16) (signed int, unsigned short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed short, signed int, signed short);
extern unsigned char (*v20) (signed short, signed int, signed short);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
extern unsigned int v25 (unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned int, unsigned int);
extern signed int v27 (unsigned char, unsigned char, signed short);
extern signed int (*v28) (unsigned char, unsigned char, signed short);
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v88 = -3;
unsigned int v87 = 0U;
unsigned int v86 = 5U;

signed char v3 (unsigned int v89, signed short v90, unsigned char v91, signed char v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -3;
signed int v94 = 3;
signed char v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
