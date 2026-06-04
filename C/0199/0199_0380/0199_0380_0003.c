#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned short, unsigned char, signed char, unsigned char);
extern signed int (*v6) (unsigned short, unsigned char, signed char, unsigned char);
extern void v7 (signed char, unsigned short, signed int, signed short);
extern void (*v8) (signed char, unsigned short, signed int, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, signed short, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed short, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed short);
extern void (*v28) (signed short);
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = -1;
unsigned char v99 = 4;
signed char v98 = 2;

void v29 (signed char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 3;
unsigned int v103 = 5U;
signed int v102 = -1;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}
