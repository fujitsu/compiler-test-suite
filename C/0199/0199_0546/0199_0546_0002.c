#include <stdlib.h>
extern signed short v1 (signed short, unsigned char);
extern signed short (*v2) (signed short, unsigned char);
signed short v3 (unsigned short, signed int, signed char, unsigned int);
signed short (*v4) (unsigned short, signed int, signed char, unsigned int) = v3;
signed int v5 (unsigned int, signed short, unsigned char, signed short);
signed int (*v6) (unsigned int, signed short, unsigned char, signed short) = v5;
extern signed short v7 (unsigned int, signed int);
extern signed short (*v8) (unsigned int, signed int);
extern signed char v9 (signed short, signed int, unsigned char, signed short);
extern signed char (*v10) (signed short, signed int, unsigned char, signed short);
extern signed short v11 (signed char, unsigned short, signed char, signed short);
extern signed short (*v12) (signed char, unsigned short, signed char, signed short);
extern signed char v13 (signed char, unsigned short, signed char, signed short);
extern signed char (*v14) (signed char, unsigned short, signed char, signed short);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
extern unsigned int v17 (signed char, unsigned char);
extern unsigned int (*v18) (signed char, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed char);
extern unsigned int (*v24) (signed short, unsigned char, signed char);
extern unsigned short v25 (signed char, signed short, unsigned char);
extern unsigned short (*v26) (signed char, signed short, unsigned char);
extern unsigned char v27 (signed short, signed int, unsigned int);
extern unsigned char (*v28) (signed short, signed int, unsigned int);
extern signed int v29 (unsigned char, signed short, unsigned int, unsigned char);
extern signed int (*v30) (unsigned char, signed short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = -1;
unsigned int v84 = 0U;
signed char v83 = -1;

signed int v5 (unsigned int v86, signed short v87, unsigned char v88, signed short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 5U;
signed short v91 = -1;
unsigned int v90 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v93, signed int v94, signed char v95, unsigned int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 3U;
unsigned short v98 = 3;
unsigned char v97 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
