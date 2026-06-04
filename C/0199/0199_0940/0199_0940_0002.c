#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned char v3 (unsigned int, signed int, signed int, signed short);
unsigned char (*v4) (unsigned int, signed int, signed int, signed short) = v3;
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
extern unsigned int v15 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned int, signed short);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short);
extern unsigned char v19 (unsigned int, signed short, signed int, unsigned char);
extern unsigned char (*v20) (unsigned int, signed short, signed int, unsigned char);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned int v25 (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v74 = 2;
unsigned short v73 = 1;
signed char v72 = -3;

unsigned char v3 (unsigned int v75, signed int v76, signed int v77, signed short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = 1;
unsigned int v80 = 1U;
signed char v79 = 2;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}
