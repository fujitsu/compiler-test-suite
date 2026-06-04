#include <stdlib.h>
extern unsigned char v3 (unsigned char, unsigned short, signed int, signed char);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, signed char);
extern void v5 (unsigned char, unsigned char);
extern void (*v6) (unsigned char, unsigned char);
extern void v7 (unsigned short, signed int, signed short);
extern void (*v8) (unsigned short, signed int, signed short);
unsigned int v9 (unsigned short, signed int, unsigned short, signed short);
unsigned int (*v10) (unsigned short, signed int, unsigned short, signed short) = v9;
extern signed char v11 (unsigned short, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned short, unsigned short, signed char, signed short);
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
unsigned short v25 (unsigned int, unsigned int, unsigned int);
unsigned short (*v26) (unsigned int, unsigned int, unsigned int) = v25;
extern unsigned int v27 (unsigned int, signed char, signed char, signed char);
extern unsigned int (*v28) (unsigned int, signed char, signed char, signed char);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v70 = 2;
signed short v69 = -2;
signed int v68 = 0;

unsigned short v25 (unsigned int v71, unsigned int v72, unsigned int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 7U;
unsigned int v75 = 6U;
unsigned char v74 = 0;
trace++;
switch (trace)
{
case 2: 
return 7;
case 4: 
return 5;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned int v79 = 3U;
signed short v78 = 3;
signed char v77 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v80, signed int v81, unsigned short v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 5U;
signed int v85 = -1;
signed char v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
