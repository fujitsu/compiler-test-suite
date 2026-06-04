#include <stdlib.h>
signed int v3 (unsigned short, unsigned char);
signed int (*v4) (unsigned short, unsigned char) = v3;
extern void v5 (signed int, unsigned int, unsigned char);
extern void (*v6) (signed int, unsigned int, unsigned char);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed int v13 (unsigned int, unsigned int, unsigned int);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int);
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (signed short, signed int, signed char, unsigned short);
extern signed char (*v20) (signed short, signed int, signed char, unsigned short);
extern signed char v21 (unsigned char, unsigned int, signed int, unsigned short);
extern signed char (*v22) (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed short v25 (signed int, signed char, signed short);
signed short (*v26) (signed int, signed char, signed short) = v25;
extern void v27 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed short v29 (signed short, signed int, signed int);
extern signed short (*v30) (signed short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 7;
signed int v87 = -1;
signed char v86 = -1;

signed short v25 (signed int v89, signed char v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 7;
signed int v93 = 0;
unsigned char v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v95, unsigned char v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 0;
signed char v98 = 3;
signed int v97 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
