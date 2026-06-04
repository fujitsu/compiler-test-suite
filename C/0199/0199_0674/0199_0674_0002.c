#include <stdlib.h>
extern void v3 (unsigned short, signed int, signed short);
extern void (*v4) (unsigned short, signed int, signed short);
extern signed short v5 (signed short, unsigned short, signed short);
extern signed short (*v6) (signed short, unsigned short, signed short);
extern unsigned char v7 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v8) (signed int, signed char, unsigned int, unsigned int);
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
extern signed char v11 (signed short, signed char, signed int);
extern signed char (*v12) (signed short, signed char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed char, signed char, signed short, signed short);
extern unsigned char (*v16) (signed char, signed char, signed short, signed short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern signed char v19 (unsigned short);
extern signed char (*v20) (unsigned short);
signed short v21 (void);
signed short (*v22) (void) = v21;
unsigned char v23 (unsigned short, signed short);
unsigned char (*v24) (unsigned short, signed short) = v23;
signed char v25 (unsigned int, signed int, signed int, signed int);
signed char (*v26) (unsigned int, signed int, signed int, signed int) = v25;
extern unsigned char v27 (unsigned short, signed short, signed char, unsigned int);
extern unsigned char (*v28) (unsigned short, signed short, signed char, unsigned int);
extern void v29 (signed char, unsigned short, unsigned short);
extern void (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = 0;
signed char v78 = -3;
signed short v77 = -1;

signed char v25 (unsigned int v80, signed int v81, signed int v82, signed int v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 7U;
signed char v85 = 1;
unsigned char v84 = 7;
trace++;
switch (trace)
{
case 1: 
return v85;
case 6: 
return v85;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 2;
unsigned int v90 = 7U;
signed short v89 = 3;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned int v94 = 7U;
signed int v93 = -3;
unsigned char v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
