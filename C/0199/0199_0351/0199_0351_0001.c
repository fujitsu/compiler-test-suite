#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
extern unsigned char v7 (signed char, signed int, signed char, signed short);
extern unsigned char (*v8) (signed char, signed int, signed char, signed short);
extern void v11 (signed short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned char, signed int);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v17 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char, signed char, unsigned char);
extern void v19 (unsigned short, signed short, signed short);
extern void (*v20) (unsigned short, signed short, signed short);
extern void v21 (signed short, unsigned char);
extern void (*v22) (signed short, unsigned char);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
signed char v29 (signed int, signed int, unsigned char, signed short);
signed char (*v30) (signed int, signed int, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 0U;
signed int v47 = 3;
signed short v46 = -1;

signed char v29 (signed int v49, signed int v50, unsigned char v51, signed short v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = 1;
unsigned short v54 = 4;
signed int v53 = 0;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return -4;
default: abort ();
}
}
}
}
