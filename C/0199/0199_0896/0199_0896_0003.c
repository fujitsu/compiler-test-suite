#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, unsigned int);
extern void (*v2) (unsigned int, unsigned short, unsigned int);
signed char v3 (void);
signed char (*v4) (void) = v3;
signed short v5 (signed short, unsigned char, signed int, unsigned int);
signed short (*v6) (signed short, unsigned char, signed int, unsigned int) = v5;
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern unsigned short v11 (unsigned char, signed char, unsigned int);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int);
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern unsigned int v17 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (unsigned short, unsigned short);
extern signed short (*v22) (unsigned short, unsigned short);
extern unsigned int v23 (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned int);
extern void (*v26) (unsigned char, signed short, unsigned int);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v113 = 7U;
signed int v112 = -2;
signed char v111 = -1;

signed short v5 (signed short v114, unsigned char v115, signed int v116, unsigned int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 3U;
signed short v119 = 2;
signed int v118 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned short v123 = 5;
unsigned short v122 = 0;
signed char v121 = 2;
trace++;
switch (trace)
{
case 1: 
return v121;
default: abort ();
}
}
}
}
