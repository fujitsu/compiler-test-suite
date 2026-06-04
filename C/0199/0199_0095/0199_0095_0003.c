#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned short (*v2) (unsigned short, unsigned short, signed short, unsigned char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern signed int v5 (unsigned char);
extern signed int (*v6) (unsigned char);
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed char v11 (signed short, unsigned short, signed int);
extern signed char (*v12) (signed short, unsigned short, signed int);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
void v23 (unsigned char, unsigned short, signed int, unsigned int);
void (*v24) (unsigned char, unsigned short, signed int, unsigned int) = v23;
extern signed short v25 (signed short, signed int);
extern signed short (*v26) (signed short, signed int);
signed int v27 (unsigned short);
signed int (*v28) (unsigned short) = v27;
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v91 = -1;
unsigned char v90 = 1;
signed short v89 = 0;

signed int v27 (unsigned short v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 1;
signed char v94 = -2;
signed int v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned char v96, unsigned short v97, signed int v98, unsigned int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 0U;
signed int v101 = -4;
unsigned char v100 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
