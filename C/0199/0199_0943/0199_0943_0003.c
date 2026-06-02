#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (unsigned short);
unsigned int (*v6) (unsigned short) = v5;
extern unsigned short v7 (signed char, unsigned int, signed char);
extern unsigned short (*v8) (signed char, unsigned int, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
extern unsigned int v13 (unsigned int, signed char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed char, unsigned char);
extern signed short v15 (unsigned short, unsigned short, signed char);
extern signed short (*v16) (unsigned short, unsigned short, signed char);
extern signed char v17 (void);
extern signed char (*v18) (void);
void v19 (void);
void (*v20) (void) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
extern void v29 (signed char, unsigned int, unsigned char);
extern void (*v30) (signed char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 3U;
unsigned int v93 = 7U;
signed char v92 = 1;

void v19 (void)
{
{
for (;;) {
unsigned short v97 = 0;
unsigned int v96 = 7U;
unsigned int v95 = 3U;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 5;
signed int v100 = -2;
unsigned short v99 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
