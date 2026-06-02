#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed int, signed int);
unsigned char v5 (signed int, unsigned short, signed int);
unsigned char (*v6) (signed int, unsigned short, signed int) = v5;
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (signed int, unsigned int, signed char);
extern void (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (signed int, unsigned int);
extern signed short (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern signed int v25 (unsigned char, unsigned char, signed char);
extern signed int (*v26) (unsigned char, unsigned char, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed short v29 (signed char, signed char, unsigned int);
extern signed short (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 6;
unsigned short v48 = 6;
signed char v47 = 2;

unsigned char v5 (signed int v50, unsigned short v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 3;
signed char v54 = 0;
unsigned char v53 = 7;
trace++;
switch (trace)
{
case 6: 
return 7;
case 8: 
return 3;
case 10: 
return v53;
default: abort ();
}
}
}
}
