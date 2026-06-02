#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned char (*v8) (signed int, unsigned int, unsigned short, unsigned int);
extern signed short v9 (unsigned char, signed char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, signed char, unsigned int, unsigned char);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
unsigned short v15 (signed short, unsigned short, signed int, signed char);
unsigned short (*v16) (signed short, unsigned short, signed int, signed char) = v15;
extern unsigned char v17 (signed char, unsigned int, signed char);
extern unsigned char (*v18) (signed char, unsigned int, signed char);
extern void v19 (signed int, signed short, unsigned short, unsigned short);
extern void (*v20) (signed int, signed short, unsigned short, unsigned short);
extern signed char v21 (signed short, signed int);
extern signed char (*v22) (signed short, signed int);
extern signed int v23 (signed int, signed int, signed char, unsigned char);
extern signed int (*v24) (signed int, signed int, signed char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, unsigned char, signed int);
extern unsigned char v27 (unsigned char, unsigned int, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v109 = 0;
unsigned int v108 = 0U;
unsigned int v107 = 5U;

unsigned short v15 (signed short v110, unsigned short v111, signed int v112, signed char v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -4;
unsigned char v115 = 0;
signed short v114 = 1;
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
signed short v119 = -1;
signed int v118 = -2;
signed int v117 = 1;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}
