#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned int);
extern signed short (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed int v11 (signed char, signed char, unsigned short, signed char);
extern signed int (*v12) (signed char, signed char, unsigned short, signed char);
void v13 (unsigned char, unsigned short, unsigned int, signed char);
void (*v14) (unsigned char, unsigned short, unsigned int, signed char) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned int v17 (signed int, signed int, unsigned int);
extern unsigned int (*v18) (signed int, signed int, unsigned int);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v23 (signed char, signed int, unsigned int, signed int);
extern signed int (*v24) (signed char, signed int, unsigned int, signed int);
extern signed char v25 (unsigned int, signed int, signed int, signed short);
extern signed char (*v26) (unsigned int, signed int, signed int, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
unsigned short v29 (unsigned int);
unsigned short (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v108 = -2;
unsigned short v107 = 6;
unsigned short v106 = 5;

unsigned short v29 (unsigned int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -3;
unsigned int v111 = 6U;
signed int v110 = 3;
trace++;
switch (trace)
{
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed int v115 = -2;
signed int v114 = -2;
unsigned char v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v116, unsigned short v117, unsigned int v118, signed char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 0;
unsigned char v121 = 6;
unsigned short v120 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
