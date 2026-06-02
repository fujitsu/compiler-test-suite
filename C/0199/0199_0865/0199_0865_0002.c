#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char, signed char);
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned short, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed char v13 (signed short, signed char, signed char);
extern signed char (*v14) (signed short, signed char, signed char);
extern signed short v15 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
extern signed char v19 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned char, unsigned short, signed int);
void v21 (signed int, unsigned char, signed short, signed char);
void (*v22) (signed int, unsigned char, signed short, signed char) = v21;
signed char v23 (signed int, signed short);
signed char (*v24) (signed int, signed short) = v23;
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = -1;
unsigned int v90 = 0U;
signed char v89 = 2;

signed char v23 (signed int v92, signed short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 7;
signed int v95 = -3;
signed char v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed int v97, unsigned char v98, signed short v99, signed char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 3;
unsigned char v102 = 0;
signed short v101 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
