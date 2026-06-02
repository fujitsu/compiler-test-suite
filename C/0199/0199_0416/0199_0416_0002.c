#include <stdlib.h>
extern signed int v1 (signed char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (signed char, unsigned char, unsigned char, unsigned int);
extern signed int v3 (signed int, signed int, unsigned char);
extern signed int (*v4) (signed int, signed int, unsigned char);
extern void v5 (unsigned short, signed short, signed char);
extern void (*v6) (unsigned short, signed short, signed char);
signed int v7 (unsigned short, signed short, signed char);
signed int (*v8) (unsigned short, signed short, signed char) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed char v13 (unsigned int, unsigned char);
extern signed char (*v14) (unsigned int, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, signed int, signed char);
extern unsigned int (*v20) (unsigned char, unsigned short, signed int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed short v23 (signed char, signed int, signed short);
signed short (*v24) (signed char, signed int, signed short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned int v29 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v30) (signed short, unsigned char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 1;
unsigned short v75 = 5;
signed int v74 = 2;

unsigned int v27 (void)
{
{
for (;;) {
signed short v79 = -4;
unsigned short v78 = 3;
unsigned short v77 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v80, signed int v81, signed short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = 1;
unsigned char v84 = 1;
unsigned int v83 = 3U;
trace++;
switch (trace)
{
case 4: 
return v82;
default: abort ();
}
}
}
}

signed int v7 (unsigned short v86, signed short v87, signed char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 2;
signed char v90 = 2;
signed char v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
