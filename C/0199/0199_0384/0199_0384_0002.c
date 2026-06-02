#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned short, signed short);
extern unsigned char (*v2) (signed short, unsigned short, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
extern unsigned short v9 (unsigned short, signed int, signed char);
extern unsigned short (*v10) (unsigned short, signed int, signed char);
extern signed short v11 (signed int, signed int);
extern signed short (*v12) (signed int, signed int);
extern unsigned int v13 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v14) (signed short, signed short, unsigned char, signed short);
extern unsigned short v15 (signed int, signed int);
extern unsigned short (*v16) (signed int, signed int);
signed short v17 (unsigned char, signed short, signed char, unsigned int);
signed short (*v18) (unsigned char, signed short, signed char, unsigned int) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed int v25 (void);
extern signed int (*v26) (void);
unsigned short v27 (signed short, signed char);
unsigned short (*v28) (signed short, signed char) = v27;
extern unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 6;
signed int v85 = 2;
unsigned int v84 = 3U;

unsigned short v27 (signed short v87, signed char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 4;
signed char v90 = -1;
signed int v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v92, signed short v93, signed char v94, unsigned int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 2;
signed short v97 = -2;
unsigned short v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
