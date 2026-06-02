#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
unsigned int v5 (unsigned char, unsigned short);
unsigned int (*v6) (unsigned char, unsigned short) = v5;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (unsigned int, signed short, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, signed short, unsigned char, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
signed short v21 (signed int, signed char);
signed short (*v22) (signed int, signed char) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern signed short v27 (signed int, signed short, unsigned int, signed short);
extern signed short (*v28) (signed int, signed short, unsigned int, signed short);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v94 = -3;
signed int v93 = -3;
unsigned int v92 = 1U;

signed short v21 (signed int v95, signed char v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 5U;
unsigned int v98 = 7U;
signed short v97 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v100, unsigned short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 4;
signed int v103 = -3;
unsigned int v102 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
