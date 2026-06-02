#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, signed char, unsigned char);
extern signed char (*v2) (signed char, unsigned short, signed char, unsigned char);
unsigned short v3 (signed char, signed char);
unsigned short (*v4) (signed char, signed char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
signed int v7 (unsigned int);
signed int (*v8) (unsigned int) = v7;
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern unsigned char v13 (signed int, unsigned int, signed char, signed short);
extern unsigned char (*v14) (signed int, unsigned int, signed char, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (unsigned char, unsigned int, unsigned char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned char);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, signed short, unsigned int);
extern signed int v25 (unsigned short, signed char);
extern signed int (*v26) (unsigned short, signed char);
extern unsigned int v27 (unsigned int, unsigned int, signed char);
extern unsigned int (*v28) (unsigned int, unsigned int, signed char);
extern signed char v29 (signed char, signed char, signed char, signed int);
extern signed char (*v30) (signed char, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = -2;
unsigned int v95 = 6U;
signed int v94 = -2;

signed int v7 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 0;
unsigned short v99 = 2;
unsigned char v98 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 0;
signed short v104 = -3;
unsigned char v103 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
