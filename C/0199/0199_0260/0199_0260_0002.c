#include <stdlib.h>
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern void v5 (signed char, unsigned int, unsigned char, unsigned char);
extern void (*v6) (signed char, unsigned int, unsigned char, unsigned char);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern unsigned short v9 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int, signed char);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
unsigned int v13 (unsigned char, unsigned char);
unsigned int (*v14) (unsigned char, unsigned char) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
unsigned char v25 (unsigned short, unsigned char, signed char, unsigned short);
unsigned char (*v26) (unsigned short, unsigned char, signed char, unsigned short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 6;
unsigned int v90 = 6U;
signed short v89 = 1;

unsigned char v25 (unsigned short v92, unsigned char v93, signed char v94, unsigned short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -4;
unsigned int v97 = 7U;
signed short v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -4;
signed int v102 = -2;
signed short v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
