#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned int, signed short, signed char, signed char);
extern unsigned int (*v10) (unsigned int, signed short, signed char, signed char);
extern void v11 (signed char, unsigned short, signed int);
extern void (*v12) (signed char, unsigned short, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
signed int v21 (unsigned char, signed short);
signed int (*v22) (unsigned char, signed short) = v21;
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
extern signed short v25 (void);
extern signed short (*v26) (void);
unsigned char v27 (unsigned short);
unsigned char (*v28) (unsigned short) = v27;
extern signed short v29 (unsigned char, unsigned short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = 0;
unsigned char v74 = 6;
signed short v73 = 2;

unsigned char v27 (unsigned short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -4;
unsigned char v78 = 0;
unsigned short v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v80, signed short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 0;
unsigned char v83 = 1;
unsigned int v82 = 6U;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v87 = 1;
unsigned short v86 = 2;
signed short v85 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
