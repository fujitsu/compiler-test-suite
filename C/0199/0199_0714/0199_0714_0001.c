#include <stdlib.h>
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
signed short v5 (unsigned char, unsigned char, signed char);
signed short (*v6) (unsigned char, unsigned char, signed char) = v5;
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v15 (signed short, signed char, unsigned int, signed int);
extern void (*v16) (signed short, signed char, unsigned int, signed int);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern unsigned short v21 (signed int, unsigned short, signed char, unsigned int);
extern unsigned short (*v22) (signed int, unsigned short, signed char, unsigned int);
extern signed char v23 (signed short, unsigned short);
extern signed char (*v24) (signed short, unsigned short);
extern signed char v25 (unsigned char, signed int, signed short, unsigned int);
extern signed char (*v26) (unsigned char, signed int, signed short, unsigned int);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v99 = 1;
unsigned short v98 = 2;
signed short v97 = -2;

signed short v5 (unsigned char v100, unsigned char v101, signed char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = 0;
signed char v104 = 3;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
