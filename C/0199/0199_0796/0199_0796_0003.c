#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned char v5 (signed int, signed short, signed char, signed short);
extern unsigned char (*v6) (signed int, signed short, signed char, signed short);
extern unsigned short v7 (unsigned char, signed char, unsigned char);
extern unsigned short (*v8) (unsigned char, signed char, unsigned char);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
unsigned char v15 (unsigned short, unsigned char, signed char);
unsigned char (*v16) (unsigned short, unsigned char, signed char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed char v19 (unsigned int, unsigned char, signed short, signed int);
extern signed char (*v20) (unsigned int, unsigned char, signed short, signed int);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
extern signed int v25 (unsigned int, signed char, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed char, signed short, unsigned int);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
signed short v29 (signed char);
signed short (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v93 = 3;
unsigned short v92 = 0;
unsigned short v91 = 6;

signed short v29 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 7U;
signed int v96 = 1;
unsigned short v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v98, unsigned char v99, signed char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 3;
signed char v102 = 1;
unsigned int v101 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
