#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed short, signed int);
extern void (*v8) (signed short, signed int);
signed int v9 (unsigned char, unsigned int, unsigned char);
signed int (*v10) (unsigned char, unsigned int, unsigned char) = v9;
extern signed short v11 (unsigned short, unsigned char, unsigned char);
extern signed short (*v12) (unsigned short, unsigned char, unsigned char);
extern signed short v13 (signed int, unsigned char, signed short, unsigned char);
extern signed short (*v14) (signed int, unsigned char, signed short, unsigned char);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (signed int, unsigned char);
extern signed int (*v20) (signed int, unsigned char);
extern void v21 (unsigned int, unsigned short, signed short);
extern void (*v22) (unsigned int, unsigned short, signed short);
extern signed short v23 (signed char, signed short, unsigned short, unsigned char);
extern signed short (*v24) (signed char, signed short, unsigned short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
unsigned char v29 (signed short, unsigned short, unsigned short, unsigned int);
unsigned char (*v30) (signed short, unsigned short, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = 1;
signed short v82 = -1;
unsigned char v81 = 1;

unsigned char v29 (signed short v84, unsigned short v85, unsigned short v86, unsigned int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 7;
unsigned int v89 = 5U;
signed char v88 = -3;
trace++;
switch (trace)
{
case 10: 
return 1;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v91, unsigned int v92, unsigned char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 2;
signed short v95 = -3;
unsigned int v94 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
