#include <stdlib.h>
extern void v1 (signed short);
extern void (*v2) (signed short);
extern unsigned short v3 (unsigned short, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, signed char);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed short, signed int, signed int, unsigned char);
extern signed short (*v10) (signed short, signed int, signed int, unsigned char);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
extern unsigned short v15 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned int, signed char, signed int);
extern unsigned int v17 (signed short, unsigned short, unsigned short);
extern unsigned int (*v18) (signed short, unsigned short, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed char v21 (unsigned short, unsigned short);
signed char (*v22) (unsigned short, unsigned short) = v21;
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern void v29 (signed char, signed short);
extern void (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 3;
signed char v48 = 1;
unsigned int v47 = 7U;

signed char v21 (unsigned short v50, unsigned short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = -4;
unsigned char v53 = 2;
signed char v52 = -1;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}
