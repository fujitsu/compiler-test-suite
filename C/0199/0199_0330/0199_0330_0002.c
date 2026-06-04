#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned char, unsigned char);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern unsigned short v5 (signed int, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, signed int);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern unsigned short v9 (signed int, signed short, signed int);
extern unsigned short (*v10) (signed int, signed short, signed int);
extern signed char v11 (unsigned int, unsigned char);
extern signed char (*v12) (unsigned int, unsigned char);
unsigned short v13 (unsigned int, unsigned short);
unsigned short (*v14) (unsigned int, unsigned short) = v13;
extern signed int v15 (signed int, signed int, unsigned char);
extern signed int (*v16) (signed int, signed int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned short, signed int, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, signed int, unsigned int);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (signed short, signed int, unsigned char);
extern unsigned int (*v24) (signed short, signed int, unsigned char);
signed int v25 (unsigned short, unsigned int, signed int);
signed int (*v26) (unsigned short, unsigned int, signed int) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (signed short, signed char, signed char, signed short);
extern signed char (*v30) (signed short, signed char, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 1;
signed short v64 = -2;
unsigned short v63 = 3;

signed int v25 (unsigned short v66, unsigned int v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 0;
unsigned int v70 = 2U;
unsigned char v69 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v72, unsigned short v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 1U;
unsigned short v75 = 3;
unsigned char v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
