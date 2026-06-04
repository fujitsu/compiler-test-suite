#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
extern void v9 (unsigned short, signed short, signed int);
extern void (*v10) (unsigned short, signed short, signed int);
extern void v11 (unsigned short, signed short, unsigned int);
extern void (*v12) (unsigned short, signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern void v17 (signed char, unsigned short, unsigned short, unsigned int);
extern void (*v18) (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (signed char, unsigned short);
extern unsigned short (*v22) (signed char, unsigned short);
void v23 (signed char, unsigned char);
void (*v24) (signed char, unsigned char) = v23;
extern signed short v25 (signed int, unsigned int, signed short);
extern signed short (*v26) (signed int, unsigned int, signed short);
extern void v27 (unsigned int, signed char, unsigned short, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v93 = 5;
signed short v92 = 1;
signed char v91 = -2;

void v23 (signed char v94, unsigned char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 1;
signed short v97 = 2;
unsigned short v96 = 3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed short v101 = 1;
unsigned short v100 = 6;
signed int v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
