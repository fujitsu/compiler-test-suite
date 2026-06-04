#include <stdlib.h>
extern signed short v1 (signed char, signed short, signed int, unsigned char);
extern signed short (*v2) (signed char, signed short, signed int, unsigned char);
extern unsigned char v3 (unsigned char, unsigned char);
extern unsigned char (*v4) (unsigned char, unsigned char);
extern signed int v5 (signed char, unsigned short);
extern signed int (*v6) (signed char, unsigned short);
extern signed char v9 (signed short, signed short, signed short, signed short);
extern signed char (*v10) (signed short, signed short, signed short, signed short);
extern signed char v11 (unsigned char, signed short, unsigned int);
extern signed char (*v12) (unsigned char, signed short, unsigned int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned short, unsigned int, signed int, signed short);
extern unsigned int (*v16) (unsigned short, unsigned int, signed int, signed short);
extern unsigned char v17 (unsigned char, signed short, signed short, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned int, signed int, unsigned char, signed char);
extern void (*v22) (unsigned int, signed int, unsigned char, signed char);
signed int v23 (unsigned short, signed short, unsigned short);
signed int (*v24) (unsigned short, signed short, unsigned short) = v23;
extern unsigned char v25 (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 1;
unsigned short v101 = 2;
unsigned int v100 = 5U;

signed int v23 (unsigned short v103, signed short v104, unsigned short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
unsigned short v107 = 0;
unsigned short v106 = 2;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}
