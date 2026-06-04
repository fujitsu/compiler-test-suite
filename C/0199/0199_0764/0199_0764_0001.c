#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
extern signed short v3 (unsigned int, unsigned short, unsigned char);
extern signed short (*v4) (unsigned int, unsigned short, unsigned char);
extern unsigned char v5 (signed short, unsigned short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned short, unsigned short);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern unsigned short v9 (signed int, unsigned int, unsigned char);
extern unsigned short (*v10) (signed int, unsigned int, unsigned char);
extern unsigned int v11 (unsigned short, signed int);
extern unsigned int (*v12) (unsigned short, signed int);
signed int v13 (signed short, signed short);
signed int (*v14) (signed short, signed short) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v18) (unsigned int, signed short, unsigned char, signed int);
extern unsigned int v19 (signed short, signed short, signed char, signed char);
extern unsigned int (*v20) (signed short, signed short, signed char, signed char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned int v27 (signed char);
extern unsigned int (*v28) (signed char);
extern unsigned char v29 (signed int, signed short, unsigned short);
extern unsigned char (*v30) (signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 1;
signed char v74 = -3;
unsigned short v73 = 0;

unsigned short v25 (void)
{
{
for (;;) {
unsigned short v78 = 5;
unsigned short v77 = 1;
unsigned int v76 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed short v79, signed short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 3;
signed char v82 = 2;
signed char v81 = 1;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}
