#include <stdlib.h>
extern void v3 (signed char, unsigned char);
extern void (*v4) (signed char, unsigned char);
unsigned char v5 (signed short, unsigned char, unsigned short);
unsigned char (*v6) (signed short, unsigned char, unsigned short) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern signed int v21 (signed short, unsigned int, signed char, unsigned short);
extern signed int (*v22) (signed short, unsigned int, signed char, unsigned short);
extern unsigned char v23 (unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, signed char);
extern signed int v25 (unsigned int, unsigned int, signed char, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (signed short, signed short, unsigned int);
extern unsigned char (*v30) (signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v108 = 0;
unsigned char v107 = 1;
signed int v106 = -1;

unsigned char v5 (signed short v109, unsigned char v110, unsigned short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -1;
signed char v113 = 2;
unsigned char v112 = 7;
trace++;
switch (trace)
{
case 2: 
return 1;
default: abort ();
}
}
}
}
