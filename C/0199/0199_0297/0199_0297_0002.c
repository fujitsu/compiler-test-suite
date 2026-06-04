#include <stdlib.h>
extern void v3 (signed int);
extern void (*v4) (signed int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned char, unsigned char);
signed char v13 (signed short);
signed char (*v14) (signed short) = v13;
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed int v17 (unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed char, signed char);
extern unsigned short (*v20) (signed char, signed char);
extern signed short v21 (unsigned char, signed short, unsigned short);
extern signed short (*v22) (unsigned char, signed short, unsigned short);
extern unsigned short v23 (signed short, signed int, signed char, unsigned int);
extern unsigned short (*v24) (signed short, signed int, signed char, unsigned int);
extern unsigned int v25 (unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, signed int, unsigned char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern signed int v29 (unsigned short, signed int, unsigned char, signed short);
extern signed int (*v30) (unsigned short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = 3;
signed char v94 = 0;
signed char v93 = -1;

unsigned int v27 (void)
{
{
for (;;) {
signed int v98 = -3;
signed short v97 = -2;
signed int v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 1U;
unsigned char v101 = 1;
signed short v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
