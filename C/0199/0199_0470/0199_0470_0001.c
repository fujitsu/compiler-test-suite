#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int, signed int);
extern unsigned short (*v2) (unsigned int, signed int, signed int);
extern unsigned char v3 (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned char, signed char, unsigned short, unsigned int);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern signed int v9 (signed char, unsigned short, signed char, unsigned short);
extern signed int (*v10) (signed char, unsigned short, signed char, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v17 (unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern unsigned int v27 (signed short, unsigned int, signed int, signed char);
extern unsigned int (*v28) (signed short, unsigned int, signed int, signed char);
extern unsigned int v29 (unsigned char, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = 2;
unsigned int v62 = 2U;
signed short v61 = 2;

signed char v25 (signed int v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 2;
signed int v66 = -2;
signed int v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 7;
signed char v70 = 2;
unsigned short v69 = 3;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed char v74 = 3;
signed short v73 = -3;
unsigned char v72 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
