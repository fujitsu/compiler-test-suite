#include <stdlib.h>
extern unsigned char v1 (signed short, signed int);
extern unsigned char (*v2) (signed short, signed int);
extern signed short v3 (signed int, signed char, signed int, signed char);
extern signed short (*v4) (signed int, signed char, signed int, signed char);
extern signed char v5 (signed char, signed int, unsigned int, signed short);
extern signed char (*v6) (signed char, signed int, unsigned int, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned char, signed char, signed short);
extern unsigned int (*v10) (unsigned char, signed char, signed short);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern signed int v13 (unsigned char, signed short);
extern signed int (*v14) (unsigned char, signed short);
extern void v15 (signed char, unsigned char);
extern void (*v16) (signed char, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned char v19 (unsigned int, signed int, signed int, signed char);
unsigned char (*v20) (unsigned int, signed int, signed int, signed char) = v19;
extern signed int v21 (unsigned int, signed char, unsigned char, unsigned short);
extern signed int (*v22) (unsigned int, signed char, unsigned char, unsigned short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern signed short v25 (unsigned short, signed short, signed short, unsigned int);
extern signed short (*v26) (unsigned short, signed short, signed short, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed short v29 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = 1;
signed short v100 = 1;
unsigned int v99 = 2U;

unsigned char v19 (unsigned int v102, signed int v103, signed int v104, signed char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 2U;
unsigned int v107 = 3U;
signed short v106 = 3;
trace++;
switch (trace)
{
case 5: 
return 5;
case 7: 
return 4;
case 11: 
return 3;
default: abort ();
}
}
}
}
