#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern void v7 (void);
extern void (*v8) (void);
signed short v9 (signed char, signed int);
signed short (*v10) (signed char, signed int) = v9;
extern signed short v11 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v12) (unsigned int, signed int, unsigned short, signed int);
extern signed int v13 (signed int, signed short, unsigned int);
extern signed int (*v14) (signed int, signed short, unsigned int);
extern signed char v15 (signed short);
extern signed char (*v16) (signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, signed char, signed int);
extern void (*v24) (signed char, unsigned char, signed char, signed int);
extern signed char v25 (unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned int, signed char, unsigned short);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = -3;
signed char v92 = 1;
signed short v91 = -1;

signed int v27 (void)
{
{
for (;;) {
signed int v96 = 0;
signed short v95 = 3;
signed short v94 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 2U;
unsigned char v100 = 2;
unsigned short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
