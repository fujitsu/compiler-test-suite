#include <stdlib.h>
extern signed short v1 (unsigned int, signed short, signed short);
extern signed short (*v2) (unsigned int, signed short, signed short);
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned int v7 (signed int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned char);
extern void v9 (unsigned int, unsigned char);
extern void (*v10) (unsigned int, unsigned char);
extern unsigned short v11 (unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, signed short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
extern void v25 (unsigned short, signed int);
extern void (*v26) (unsigned short, signed int);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
void v29 (signed char, unsigned char);
void (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = 3;
unsigned short v124 = 2;
signed int v123 = 2;

void v29 (signed char v126, unsigned char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 7U;
signed char v129 = 2;
signed short v128 = 0;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
return;
default: abort ();
}
}
}
}
