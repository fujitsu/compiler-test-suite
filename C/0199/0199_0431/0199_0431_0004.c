#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed int v5 (unsigned char);
extern signed int (*v6) (unsigned char);
extern void v7 (signed char, signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, signed char, unsigned char, unsigned char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned short v13 (signed int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed int v25 (unsigned short, signed char, unsigned short, signed short);
extern signed int (*v26) (unsigned short, signed char, unsigned short, signed short);
extern void v27 (unsigned short, signed int, unsigned short);
extern void (*v28) (unsigned short, signed int, unsigned short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v126 = 4U;
unsigned int v125 = 3U;
unsigned char v124 = 5;

signed short v29 (void)
{
{
for (;;) {
signed short v129 = 1;
unsigned short v128 = 1;
unsigned short v127 = 0;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 1;
case 10: 
return 1;
default: abort ();
}
}
}
}
