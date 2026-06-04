#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (signed char, unsigned short, unsigned int, signed short);
extern void (*v8) (signed char, unsigned short, unsigned int, signed short);
extern unsigned int v9 (signed char, signed short, unsigned int, signed int);
extern unsigned int (*v10) (signed char, signed short, unsigned int, signed int);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned short, unsigned char, signed short);
extern signed int (*v14) (unsigned short, unsigned char, signed short);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (unsigned short, signed char, signed int);
extern unsigned char (*v18) (unsigned short, signed char, signed int);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern void v23 (unsigned int, signed char);
extern void (*v24) (unsigned int, signed char);
void v25 (void);
void (*v26) (void) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
signed int v29 (unsigned short);
signed int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v116 = 2;
signed short v115 = 0;
unsigned char v114 = 1;

signed int v29 (unsigned short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 7;
unsigned short v119 = 0;
signed char v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
signed short v123 = -3;
unsigned short v122 = 0;
unsigned short v121 = 5;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
return;
default: abort ();
}
}
}
}
