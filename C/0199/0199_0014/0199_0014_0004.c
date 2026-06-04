#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short, signed short, unsigned short);
extern void v3 (unsigned short, signed char, signed int);
extern void (*v4) (unsigned short, signed char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned short v13 (signed int, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned short, unsigned int, unsigned int);
signed short v15 (void);
signed short (*v16) (void) = v15;
signed int v19 (unsigned short, signed int, unsigned short, unsigned char);
signed int (*v20) (unsigned short, signed int, unsigned short, unsigned char) = v19;
extern unsigned char v21 (unsigned char, signed int);
extern unsigned char (*v22) (unsigned char, signed int);
extern signed int v23 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed int (*v24) (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
void v27 (signed char);
void (*v28) (signed char) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v132 = 3;
unsigned char v131 = 2;
unsigned char v130 = 0;

void v27 (signed char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 3;
unsigned short v135 = 1;
unsigned short v134 = 4;
trace++;
switch (trace)
{
case 6: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

signed int v19 (unsigned short v137, signed int v138, unsigned short v139, unsigned char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 7U;
unsigned char v142 = 7;
signed char v141 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed short v146 = 2;
unsigned char v145 = 0;
signed int v144 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
