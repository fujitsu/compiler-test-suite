#include <stdlib.h>
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern void v5 (signed char, unsigned int, unsigned char, unsigned char);
extern void (*v6) (signed char, unsigned int, unsigned char, unsigned char);
signed int v7 (unsigned char, signed int);
signed int (*v8) (unsigned char, signed int) = v7;
extern unsigned short v9 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int, signed char);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern unsigned int v13 (unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned char, unsigned char);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned char v25 (unsigned short, unsigned char, signed char, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned char, signed char, unsigned short);
void v27 (void);
void (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 5;
unsigned int v75 = 4U;
unsigned char v74 = 4;

void v27 (void)
{
{
for (;;) {
signed short v79 = -1;
unsigned char v78 = 7;
signed short v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = 1;
signed short v82 = 1;
unsigned int v81 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v84, signed int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 7U;
unsigned char v87 = 3;
unsigned int v86 = 7U;
trace++;
switch (trace)
{
case 3: 
return v85;
case 11: 
return 1;
default: abort ();
}
}
}
}
