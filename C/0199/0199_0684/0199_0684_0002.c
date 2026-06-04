#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, unsigned short);
extern unsigned char (*v2) (unsigned short, signed short, unsigned short);
extern signed short v3 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v4) (signed short, unsigned int, unsigned short, signed char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (unsigned char, signed int, signed short, signed char);
extern signed char (*v8) (unsigned char, signed int, signed short, signed char);
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern unsigned short v15 (signed short, unsigned int, unsigned char);
extern unsigned short (*v16) (signed short, unsigned int, unsigned char);
unsigned char v17 (signed char);
unsigned char (*v18) (signed char) = v17;
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
extern signed char v21 (unsigned int, signed short, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed short, signed char);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern void v25 (void);
extern void (*v26) (void);
signed short v27 (signed int);
signed short (*v28) (signed int) = v27;
extern signed char v29 (unsigned char, unsigned int);
extern signed char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 6;
unsigned int v72 = 6U;
unsigned char v71 = 1;

signed short v27 (signed int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 3;
signed short v76 = -4;
signed short v75 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
signed char v80 = -3;
unsigned int v79 = 6U;
signed int v78 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -2;
unsigned char v83 = 4;
unsigned char v82 = 3;
trace++;
switch (trace)
{
case 1: 
return v82;
default: abort ();
}
}
}
}
