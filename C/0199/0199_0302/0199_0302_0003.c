#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned int v5 (unsigned short, signed int, signed short);
extern unsigned int (*v6) (unsigned short, signed int, signed short);
extern unsigned int v7 (unsigned char, signed int, signed char);
extern unsigned int (*v8) (unsigned char, signed int, signed char);
extern void v9 (signed int, signed char, signed char, unsigned char);
extern void (*v10) (signed int, signed char, signed char, unsigned char);
unsigned char v11 (signed char, signed int, unsigned int);
unsigned char (*v12) (signed char, signed int, unsigned int) = v11;
extern void v13 (signed char);
extern void (*v14) (signed char);
extern signed short v15 (signed short, signed short, signed int);
extern signed short (*v16) (signed short, signed short, signed int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
unsigned char v27 (unsigned int);
unsigned char (*v28) (unsigned int) = v27;
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 4;
unsigned char v93 = 2;
unsigned int v92 = 5U;

unsigned char v27 (unsigned int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 1;
signed char v97 = -1;
signed int v96 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v99, signed int v100, unsigned int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 1;
signed char v103 = 2;
signed char v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
