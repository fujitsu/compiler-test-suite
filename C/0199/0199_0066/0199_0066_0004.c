#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed char (*v6) (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
void v11 (void);
void (*v12) (void) = v11;
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
extern signed char v15 (unsigned short, signed int, unsigned char);
extern signed char (*v16) (unsigned short, signed int, unsigned char);
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned int);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned int);
extern signed int v19 (unsigned int, unsigned int, signed int);
extern signed int (*v20) (unsigned int, unsigned int, signed int);
extern unsigned int v23 (signed short, signed int, signed short);
extern unsigned int (*v24) (signed short, signed int, signed short);
extern unsigned short v25 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short v27 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned short (*v28) (unsigned char, unsigned short, unsigned int, signed short);
void v29 (signed short, unsigned short);
void (*v30) (signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v132 = 6;
signed short v131 = -3;
signed short v130 = -2;

void v29 (signed short v133, unsigned short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 4;
signed int v136 = -3;
unsigned short v135 = 4;
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
unsigned char v140 = 0;
unsigned short v139 = 4;
unsigned short v138 = 4;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

void v9 (unsigned short v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 3U;
unsigned int v143 = 2U;
signed short v142 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
