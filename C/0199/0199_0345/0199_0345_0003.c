#include <stdlib.h>
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
extern signed short v5 (signed int, signed int, signed short, unsigned short);
extern signed short (*v6) (signed int, signed int, signed short, unsigned short);
extern unsigned char v7 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, unsigned short, unsigned int);
void v9 (signed char);
void (*v10) (signed char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (signed char, unsigned char);
extern unsigned char (*v14) (signed char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned short, unsigned int);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char, unsigned char);
extern void v29 (unsigned int, unsigned int, signed char, signed short);
extern void (*v30) (unsigned int, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 4U;
signed int v114 = 2;
signed short v113 = -3;

signed char v19 (void)
{
{
for (;;) {
signed char v118 = -3;
unsigned int v117 = 5U;
signed int v116 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 4U;
unsigned char v121 = 3;
signed short v120 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed short v123;
v123 = v11 ();
history[history_index++] = (int)v123;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

void v3 (unsigned short v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 5U;
unsigned int v126 = 3U;
unsigned short v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
