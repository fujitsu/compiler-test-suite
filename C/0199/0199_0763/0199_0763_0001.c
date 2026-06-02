#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
extern signed short v5 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char, unsigned short, unsigned char);
extern void v7 (unsigned char, signed short, unsigned char, unsigned int);
extern void (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern unsigned int v9 (signed short, signed char);
extern unsigned int (*v10) (signed short, signed char);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v17 (unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned int, unsigned int);
extern signed char v19 (unsigned short, unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned short, unsigned char);
extern signed int v21 (signed char, unsigned char, signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned char, signed char, unsigned short);
extern unsigned int v23 (signed int, signed short, signed short);
extern unsigned int (*v24) (signed int, signed short, signed short);
unsigned char v25 (unsigned short);
unsigned char (*v26) (unsigned short) = v25;
extern void v27 (signed int, unsigned int, unsigned int);
extern void (*v28) (signed int, unsigned int, unsigned int);
extern signed char v29 (unsigned short, unsigned short, signed short);
extern signed char (*v30) (unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 7U;
unsigned int v47 = 7U;
unsigned short v46 = 5;

unsigned char v25 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 7;
signed int v51 = 3;
unsigned char v50 = 6;
trace++;
switch (trace)
{
case 7: 
return 6;
case 9: 
return v50;
default: abort ();
}
}
}
}
