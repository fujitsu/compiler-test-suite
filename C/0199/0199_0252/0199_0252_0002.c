#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed char, signed short);
extern signed int (*v2) (signed char, unsigned int, signed char, signed short);
extern signed int v3 (signed char, signed short, unsigned int);
extern signed int (*v4) (signed char, signed short, unsigned int);
extern signed short v5 (signed short, unsigned short, unsigned short);
extern signed short (*v6) (signed short, unsigned short, unsigned short);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int, signed char);
extern signed char (*v14) (unsigned int, signed char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned short v17 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v18) (unsigned int, signed short, signed short, signed int);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned char v21 (signed short, signed char);
extern unsigned char (*v22) (signed short, signed char);
unsigned int v23 (signed int, unsigned char, signed char);
unsigned int (*v24) (signed int, unsigned char, signed char) = v23;
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (signed short, signed short, signed short);
extern signed short (*v30) (signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v72 = 3;
unsigned int v71 = 3U;
signed int v70 = -3;

unsigned int v23 (signed int v73, unsigned char v74, signed char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = 1;
signed int v77 = -2;
signed short v76 = 2;
trace++;
switch (trace)
{
case 9: 
return 4U;
default: abort ();
}
}
}
}
