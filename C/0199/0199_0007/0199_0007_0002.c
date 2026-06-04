#include <stdlib.h>
signed short v3 (unsigned short, unsigned char);
signed short (*v4) (unsigned short, unsigned char) = v3;
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, signed char);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed int v11 (signed char, signed char, unsigned int);
extern signed int (*v12) (signed char, signed char, unsigned int);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern signed char v17 (signed char, signed char, unsigned int, signed char);
extern signed char (*v18) (signed char, signed char, unsigned int, signed char);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern unsigned short v21 (signed int, signed int, unsigned char);
extern unsigned short (*v22) (signed int, signed int, unsigned char);
unsigned short v23 (unsigned short, signed int);
unsigned short (*v24) (unsigned short, signed int) = v23;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v74 = 7;
signed short v73 = -1;
signed char v72 = -1;

unsigned short v23 (unsigned short v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 7;
signed short v78 = 0;
signed char v77 = -1;
trace++;
switch (trace)
{
case 10: 
return v75;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed int v82 = 2;
signed int v81 = 1;
unsigned int v80 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v83, unsigned char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -3;
signed char v86 = -4;
signed char v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
