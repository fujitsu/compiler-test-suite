#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern unsigned int v3 (signed int, signed int, signed short);
extern unsigned int (*v4) (signed int, signed int, signed short);
extern unsigned char v5 (unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned short, unsigned short);
extern signed char v7 (signed int, signed short, unsigned int, signed char);
extern signed char (*v8) (signed int, signed short, unsigned int, signed char);
extern signed char v9 (unsigned short, signed short, unsigned short, signed int);
extern signed char (*v10) (unsigned short, signed short, unsigned short, signed int);
unsigned int v11 (unsigned short, signed short, unsigned int, signed char);
unsigned int (*v12) (unsigned short, signed short, unsigned int, signed char) = v11;
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
unsigned int v15 (signed int);
unsigned int (*v16) (signed int) = v15;
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned int v19 (signed short, unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (signed short, unsigned int, unsigned int, signed char);
extern signed short v21 (unsigned short, unsigned short, signed char);
extern signed short (*v22) (unsigned short, unsigned short, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v62 = -3;
signed char v61 = -4;
unsigned short v60 = 0;

unsigned int v15 (signed int v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -3;
signed char v65 = 3;
unsigned char v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v67, signed short v68, unsigned int v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 1;
unsigned char v72 = 2;
signed char v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
