#include <stdlib.h>
extern void v1 (signed short, unsigned char, signed int, unsigned int);
extern void (*v2) (signed short, unsigned char, signed int, unsigned int);
unsigned int v3 (signed char);
unsigned int (*v4) (signed char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed short, unsigned int);
extern signed short (*v8) (signed short, unsigned int);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (signed int, unsigned short, unsigned char);
extern unsigned char (*v18) (signed int, unsigned short, unsigned char);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern void v21 (unsigned int, signed int, unsigned int, unsigned char);
extern void (*v22) (unsigned int, signed int, unsigned int, unsigned char);
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern unsigned short v25 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 4;
unsigned int v57 = 3U;
unsigned short v56 = 3;

unsigned int v3 (signed char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 3;
signed short v61 = 0;
signed short v60 = 1;
trace++;
switch (trace)
{
case 11: 
return 2U;
default: abort ();
}
}
}
}
