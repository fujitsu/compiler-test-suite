#include <stdlib.h>
extern signed char v1 (unsigned short, signed int, signed int, signed short);
extern signed char (*v2) (unsigned short, signed int, signed int, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned int, unsigned char, unsigned short);
extern signed char v7 (unsigned short, signed short);
extern signed char (*v8) (unsigned short, signed short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed short v11 (signed char, signed short, unsigned char);
extern signed short (*v12) (signed char, signed short, unsigned char);
extern unsigned char v13 (signed char, unsigned char, signed char);
extern unsigned char (*v14) (signed char, unsigned char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned char v19 (signed short, unsigned short, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, unsigned char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
unsigned char v25 (signed char, unsigned int);
unsigned char (*v26) (signed char, unsigned int) = v25;
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern signed char v29 (signed char, signed char, signed int, signed char);
extern signed char (*v30) (signed char, signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v121 = 1;
signed short v120 = 2;
signed char v119 = 0;

unsigned int v27 (void)
{
{
for (;;) {
signed char v124 = 2;
unsigned char v123 = 3;
signed int v122 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed char v125, unsigned int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -1;
signed char v128 = -2;
unsigned int v127 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned char v132 = 5;
unsigned short v131 = 1;
signed int v130 = -2;
trace++;
switch (trace)
{
case 5: 
return 0;
case 7: 
return -1;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned char v135 = 0;
unsigned int v134 = 7U;
signed int v133 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
