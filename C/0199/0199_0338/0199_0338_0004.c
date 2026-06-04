#include <stdlib.h>
extern signed short v1 (signed char, signed char);
extern signed short (*v2) (signed char, signed char);
extern signed char v3 (unsigned char, signed int);
extern signed char (*v4) (unsigned char, signed int);
signed int v5 (unsigned int, unsigned short);
signed int (*v6) (unsigned int, unsigned short) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned short v17 (unsigned short, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned short, unsigned int, signed int, signed char);
void v19 (signed short);
void (*v20) (signed short) = v19;
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned int, unsigned short, unsigned char);
extern signed int (*v26) (unsigned int, unsigned short, unsigned char);
extern signed int v27 (unsigned short, unsigned short, signed int);
extern signed int (*v28) (unsigned short, unsigned short, signed int);
extern unsigned short v29 (signed char, signed short);
extern unsigned short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v120 = 5U;
unsigned short v119 = 5;
signed short v118 = 2;

void v19 (signed short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 3;
unsigned int v123 = 2U;
signed char v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
unsigned short v127 = 0;
signed char v126 = -2;
unsigned int v125 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v128, unsigned short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 7U;
signed short v131 = 0;
unsigned char v130 = 3;
trace++;
switch (trace)
{
case 2: 
return 2;
case 4: 
return 0;
default: abort ();
}
}
}
}
