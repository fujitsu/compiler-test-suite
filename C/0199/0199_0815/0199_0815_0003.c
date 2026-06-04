#include <stdlib.h>
extern unsigned int v1 (signed short, signed int, unsigned int);
extern unsigned int (*v2) (signed short, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int, unsigned int);
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned char v11 (signed short, signed char);
extern unsigned char (*v12) (signed short, signed char);
extern signed int v13 (unsigned char, unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, unsigned char, signed int, unsigned int);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
signed short v17 (signed char, unsigned int, signed char);
signed short (*v18) (signed char, unsigned int, signed char) = v17;
extern unsigned int v21 (signed int, signed char, signed char);
extern unsigned int (*v22) (signed int, signed char, signed char);
extern void v23 (unsigned int, unsigned int, signed char, unsigned short);
extern void (*v24) (unsigned int, unsigned int, signed char, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed int);
extern unsigned char (*v28) (signed short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = 3;
unsigned char v89 = 4;
signed short v88 = -1;

signed short v17 (signed char v91, unsigned int v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 0;
signed short v95 = 0;
signed char v94 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed short v97;
signed char v98;
unsigned char v99;
v97 = v95 - 0;
v98 = v94 + v94;
v99 = v11 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 17: 
return v95;
default: abort ();
}
}
}
}
