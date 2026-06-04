#include <stdlib.h>
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern void v7 (signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed int v11 (signed char, unsigned int);
signed int (*v12) (signed char, unsigned int) = v11;
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed int v19 (unsigned short, signed char);
extern signed int (*v20) (unsigned short, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned short v23 (unsigned char, signed int);
extern unsigned short (*v24) (unsigned char, signed int);
unsigned short v25 (unsigned char, unsigned int, signed char);
unsigned short (*v26) (unsigned char, unsigned int, signed char) = v25;
extern unsigned int v27 (signed int, signed short, signed int, signed int);
extern unsigned int (*v28) (signed int, signed short, signed int, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v96 = -3;
signed char v95 = 1;
signed char v94 = -3;

unsigned short v25 (unsigned char v97, unsigned int v98, signed char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 2;
signed int v101 = 2;
signed short v100 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v103, unsigned int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 3;
signed short v106 = 3;
unsigned short v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
