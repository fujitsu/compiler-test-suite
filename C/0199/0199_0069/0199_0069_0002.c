#include <stdlib.h>
extern signed short v1 (signed char, unsigned int);
extern signed short (*v2) (signed char, unsigned int);
extern unsigned short v3 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned short, unsigned short);
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed short v13 (signed short, signed char);
extern signed short (*v14) (signed short, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned char, signed short);
extern unsigned short (*v18) (unsigned short, signed short, unsigned char, signed short);
extern unsigned short v19 (signed short, signed short, unsigned short);
extern unsigned short (*v20) (signed short, signed short, unsigned short);
extern signed char v21 (signed char, unsigned char, signed char);
extern signed char (*v22) (signed char, unsigned char, signed char);
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = 0;
unsigned char v74 = 2;
signed int v73 = -2;

signed short v5 (signed int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 0;
unsigned int v78 = 2U;
unsigned char v77 = 2;
trace++;
switch (trace)
{
case 4: 
return -1;
default: abort ();
}
}
}
}
