#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern signed char v3 (signed char, signed short, signed char, unsigned short);
extern signed char (*v4) (signed char, signed short, signed char, unsigned short);
unsigned int v5 (unsigned short, signed char, unsigned char);
unsigned int (*v6) (unsigned short, signed char, unsigned char) = v5;
extern void v7 (unsigned short, signed short, unsigned char);
extern void (*v8) (unsigned short, signed short, unsigned char);
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
extern unsigned int v11 (signed int, signed short, signed char, signed short);
extern unsigned int (*v12) (signed int, signed short, signed char, signed short);
unsigned char v13 (signed int, unsigned char, signed char);
unsigned char (*v14) (signed int, unsigned char, signed char) = v13;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed short, unsigned int);
extern void (*v24) (signed short, unsigned int);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v111 = 3;
signed int v110 = -4;
unsigned char v109 = 7;

unsigned char v13 (signed int v112, unsigned char v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = 3;
signed short v116 = 0;
unsigned int v115 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v118, signed char v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -2;
signed char v122 = 2;
signed int v121 = -4;
trace++;
switch (trace)
{
case 1: 
return 7U;
default: abort ();
}
}
}
}
