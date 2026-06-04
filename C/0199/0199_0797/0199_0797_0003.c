#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v6) (unsigned int, signed char, signed short, unsigned char);
extern signed short v7 (unsigned short, signed char, signed char);
extern signed short (*v8) (unsigned short, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned short);
extern signed short (*v10) (unsigned int, unsigned char, unsigned short);
extern unsigned int v11 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed char, signed int, unsigned short);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern signed short v15 (unsigned int, signed int, signed char);
extern signed short (*v16) (unsigned int, signed int, signed char);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern void v19 (signed short, signed short);
extern void (*v20) (signed short, signed short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned short v25 (signed int, signed char, unsigned int);
extern unsigned short (*v26) (signed int, signed char, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed short v29 (unsigned char, signed short, unsigned char);
signed short (*v30) (unsigned char, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v98 = 0;
unsigned char v97 = 3;
signed int v96 = -2;

signed short v29 (unsigned char v99, signed short v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 4;
signed char v103 = 3;
unsigned short v102 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
