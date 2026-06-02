#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (signed short, signed char, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (signed int, unsigned short, unsigned int, signed short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned int, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v14) (signed char, unsigned int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, signed int, unsigned char, unsigned int);
unsigned short v23 (unsigned char, signed short);
unsigned short (*v24) (unsigned char, signed short) = v23;
extern unsigned int v25 (unsigned char, signed short, unsigned char, signed int);
extern unsigned int (*v26) (unsigned char, signed short, unsigned char, signed int);
extern signed char v27 (unsigned short, unsigned int, unsigned short, signed short);
extern signed char (*v28) (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char v29 (unsigned int, unsigned char, signed char);
extern unsigned char (*v30) (unsigned int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v125 = -4;
unsigned char v124 = 3;
signed short v123 = 0;

unsigned short v23 (unsigned char v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -4;
unsigned short v129 = 5;
signed int v128 = -2;
trace++;
switch (trace)
{
case 2: 
return 4;
case 6: 
return v129;
case 10: 
return v129;
default: abort ();
}
}
}
}
