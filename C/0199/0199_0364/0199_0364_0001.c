#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern void v5 (signed int, unsigned char, unsigned char);
extern void (*v6) (signed int, unsigned char, unsigned char);
extern unsigned short v7 (unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, signed char);
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
void v13 (unsigned short, signed char);
void (*v14) (unsigned short, signed char) = v13;
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v22) (unsigned char, signed int, unsigned int, unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 4;
unsigned int v71 = 6U;
signed char v70 = -3;

unsigned int v23 (void)
{
{
for (;;) {
signed char v75 = 0;
signed int v74 = -1;
signed char v73 = 3;
trace++;
switch (trace)
{
case 3: 
return 2U;
default: abort ();
}
}
}
}

void v13 (unsigned short v76, signed char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 3;
unsigned short v79 = 1;
unsigned int v78 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
