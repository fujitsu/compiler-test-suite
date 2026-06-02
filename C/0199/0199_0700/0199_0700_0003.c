#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern void v13 (unsigned short, signed int);
extern void (*v14) (unsigned short, signed int);
extern unsigned short v15 (signed short, signed short, unsigned char);
extern unsigned short (*v16) (signed short, signed short, unsigned char);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern void v23 (signed short, signed short, unsigned char);
extern void (*v24) (signed short, signed short, unsigned char);
unsigned short v25 (unsigned int, unsigned int, unsigned char, signed short);
unsigned short (*v26) (unsigned int, unsigned int, unsigned char, signed short) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed short v29 (signed int, signed int, unsigned char);
extern signed short (*v30) (signed int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 0;
signed short v101 = -1;
unsigned int v100 = 6U;

unsigned short v25 (unsigned int v103, unsigned int v104, unsigned char v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 3;
signed char v108 = -3;
signed int v107 = 1;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 7;
default: abort ();
}
}
}
}
