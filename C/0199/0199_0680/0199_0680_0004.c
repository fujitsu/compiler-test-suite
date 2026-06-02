#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed int, unsigned char, signed int, signed short);
extern unsigned char (*v10) (signed int, unsigned char, signed int, signed short);
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern signed char v15 (unsigned char, unsigned short, signed short, unsigned char);
extern signed char (*v16) (unsigned char, unsigned short, signed short, unsigned char);
extern void v17 (signed int, unsigned int, unsigned int, signed int);
extern void (*v18) (signed int, unsigned int, unsigned int, signed int);
void v19 (unsigned char, signed char, unsigned char, signed int);
void (*v20) (unsigned char, signed char, unsigned char, signed int) = v19;
extern signed short v21 (unsigned short, signed char, signed short);
extern signed short (*v22) (unsigned short, signed char, signed short);
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
extern unsigned int v25 (signed short, signed short, signed char);
extern unsigned int (*v26) (signed short, signed short, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v143 = 1;
unsigned char v142 = 4;
signed int v141 = 2;

void v19 (unsigned char v144, signed char v145, unsigned char v146, signed int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = 3;
unsigned char v149 = 5;
signed short v148 = 3;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
default: abort ();
}
}
}
}
