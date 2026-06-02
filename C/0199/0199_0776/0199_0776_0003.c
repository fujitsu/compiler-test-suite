#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned int, signed short, signed char, signed char);
extern unsigned int (*v10) (unsigned int, signed short, signed char, signed char);
extern void v11 (signed char, unsigned short, signed int);
extern void (*v12) (signed char, unsigned short, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
signed int v23 (signed short, signed short);
signed int (*v24) (signed short, signed short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
signed short v29 (unsigned char, unsigned short, unsigned char, unsigned short);
signed short (*v30) (unsigned char, unsigned short, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v90 = -3;
unsigned char v89 = 5;
signed char v88 = -2;

signed short v29 (unsigned char v91, unsigned short v92, unsigned char v93, unsigned short v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 6;
signed int v96 = -3;
signed short v95 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed short v98, signed short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 1;
unsigned int v101 = 7U;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
