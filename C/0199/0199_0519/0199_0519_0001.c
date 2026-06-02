#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
extern signed int v3 (signed int, signed char);
extern signed int (*v4) (signed int, signed char);
unsigned short v5 (signed char, signed char, signed char);
unsigned short (*v6) (signed char, signed char, signed char) = v5;
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
extern unsigned short v9 (unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (unsigned short, unsigned int, signed int);
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern signed char v13 (unsigned short, unsigned short, unsigned short, signed char);
extern signed char (*v14) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (unsigned short, unsigned short, signed char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
signed int v23 (signed short);
signed int (*v24) (signed short) = v23;
extern signed char v25 (signed char, unsigned char);
extern signed char (*v26) (signed char, unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed short v29 (unsigned int, signed short, unsigned short, signed short);
extern signed short (*v30) (unsigned int, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 7U;
signed int v61 = -4;
signed int v60 = 1;

signed int v23 (signed short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 3;
unsigned char v65 = 2;
unsigned char v64 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v67, signed char v68, signed char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -1;
unsigned char v71 = 2;
unsigned short v70 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
