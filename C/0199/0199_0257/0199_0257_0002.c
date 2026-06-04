#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
signed char v5 (unsigned short, unsigned char);
signed char (*v6) (unsigned short, unsigned char) = v5;
extern unsigned int v7 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, unsigned short, unsigned int, unsigned int);
extern signed int v9 (unsigned short, unsigned int, signed int);
extern signed int (*v10) (unsigned short, unsigned int, signed int);
extern unsigned short v11 (signed char, unsigned char);
extern unsigned short (*v12) (signed char, unsigned char);
extern void v13 (unsigned short, signed int, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v19 (signed short, signed char);
extern unsigned short (*v20) (signed short, signed char);
extern void v21 (unsigned char, signed short, signed char, unsigned int);
extern void (*v22) (unsigned char, signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v107 = 5;
unsigned char v106 = 7;
signed short v105 = -4;

signed int v29 (void)
{
{
for (;;) {
signed char v110 = 3;
unsigned short v109 = 0;
unsigned int v108 = 2U;
trace++;
switch (trace)
{
case 6: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (unsigned short v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -4;
unsigned short v114 = 0;
unsigned short v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -4;
signed char v118 = 1;
signed int v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
