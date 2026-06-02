#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int);
extern signed char (*v2) (unsigned int, unsigned int);
extern signed short v3 (unsigned char, signed short, signed char);
extern signed short (*v4) (unsigned char, signed short, signed char);
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed int);
extern signed int v9 (signed int, signed short, unsigned char);
extern signed int (*v10) (signed int, signed short, unsigned char);
void v11 (void);
void (*v12) (void) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, unsigned char, unsigned short);
extern signed int (*v16) (signed int, unsigned char, unsigned short);
extern signed char v17 (signed int, unsigned int, unsigned short, unsigned char);
extern signed char (*v18) (signed int, unsigned int, unsigned short, unsigned char);
unsigned short v19 (unsigned char);
unsigned short (*v20) (unsigned char) = v19;
extern void v21 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v22) (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed char);
extern unsigned short (*v24) (unsigned char, signed char);
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
unsigned int v29 (unsigned int, signed int, signed char, signed short);
unsigned int (*v30) (unsigned int, signed int, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v109 = -4;
unsigned int v108 = 2U;
signed short v107 = 0;

unsigned int v29 (unsigned int v110, signed int v111, signed char v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 0;
unsigned char v115 = 7;
unsigned char v114 = 4;
trace++;
switch (trace)
{
case 2: 
return 0U;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 5;
unsigned char v119 = 6;
signed short v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed short v123 = 3;
unsigned char v122 = 7;
signed int v121 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
