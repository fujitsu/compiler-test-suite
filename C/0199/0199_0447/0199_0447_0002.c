#include <stdlib.h>
extern void v3 (unsigned short, unsigned short, unsigned short, unsigned char);
extern void (*v4) (unsigned short, unsigned short, unsigned short, unsigned char);
extern unsigned int v5 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned short, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (unsigned short, signed short, unsigned char, unsigned int);
extern signed short (*v10) (unsigned short, signed short, unsigned char, unsigned int);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern signed int v15 (signed short, unsigned int, signed char);
extern signed int (*v16) (signed short, unsigned int, signed char);
extern unsigned short v17 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short, unsigned short);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned short v21 (unsigned short, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, unsigned short, signed char);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 3;
signed short v90 = -1;
unsigned char v89 = 4;

signed int v23 (signed char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 2;
unsigned int v94 = 1U;
unsigned int v93 = 7U;
trace++;
switch (trace)
{
case 3: 
return 0;
case 5: 
return -3;
default: abort ();
}
}
}
}
