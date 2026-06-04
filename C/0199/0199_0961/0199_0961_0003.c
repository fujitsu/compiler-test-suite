#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern signed int v3 (signed char, unsigned char, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, signed short, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (signed int, signed int, unsigned short, signed int);
extern unsigned short (*v12) (signed int, signed int, unsigned short, signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed int v19 (unsigned char, signed short, unsigned short, signed char);
extern signed int (*v20) (unsigned char, signed short, unsigned short, signed char);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern void v27 (void);
extern void (*v28) (void);
void v29 (unsigned int);
void (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v91 = 1U;
unsigned char v90 = 4;
unsigned int v89 = 0U;

void v29 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 1;
unsigned int v94 = 1U;
signed char v93 = -2;
trace++;
switch (trace)
{
case 4: 
return;
case 8: 
return;
default: abort ();
}
}
}
}
