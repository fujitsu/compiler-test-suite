#include <stdlib.h>
extern signed short v3 (signed int, signed char);
extern signed short (*v4) (signed int, signed char);
extern unsigned short v5 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v6) (unsigned char, signed short, unsigned int, unsigned int);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern signed short v9 (signed short, unsigned char);
extern signed short (*v10) (signed short, unsigned char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned short v15 (signed short, signed char, signed int, signed char);
extern unsigned short (*v16) (signed short, signed char, signed int, signed char);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern void v19 (unsigned char, signed int);
extern void (*v20) (unsigned char, signed int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
void v23 (signed int, signed int);
void (*v24) (signed int, signed int) = v23;
extern unsigned int v25 (unsigned int, signed short, unsigned char);
extern unsigned int (*v26) (unsigned int, signed short, unsigned char);
extern void v27 (unsigned int);
extern void (*v28) (unsigned int);
extern unsigned char v29 (unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v70 = 3;
signed short v69 = 0;
signed char v68 = 1;

void v23 (signed int v71, signed int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 6;
unsigned char v74 = 7;
signed short v73 = -2;
trace++;
switch (trace)
{
case 2: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed char v78 = -4;
unsigned char v77 = 7;
signed char v76 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned char v81 = 5;
unsigned char v80 = 6;
unsigned int v79 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
