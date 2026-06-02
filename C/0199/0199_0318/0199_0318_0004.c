#include <stdlib.h>
extern signed short v3 (signed int, signed char);
extern signed short (*v4) (signed int, signed char);
extern unsigned short v5 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v6) (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (signed short, unsigned char);
extern signed short (*v10) (signed short, unsigned char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
unsigned short v15 (signed short, signed char, signed int, signed char);
unsigned short (*v16) (signed short, signed char, signed int, signed char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern void v19 (unsigned char, signed int);
extern void (*v20) (unsigned char, signed int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern void v23 (signed int, signed int);
extern void (*v24) (signed int, signed int);
extern unsigned int v25 (unsigned int, signed short, unsigned char);
extern unsigned int (*v26) (unsigned int, signed short, unsigned char);
void v27 (unsigned int);
void (*v28) (unsigned int) = v27;
extern unsigned char v29 (unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 2;
unsigned short v131 = 4;
unsigned char v130 = 3;

void v27 (unsigned int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 0;
signed short v135 = 3;
unsigned short v134 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v137, signed char v138, signed int v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 6;
signed int v142 = -1;
signed int v141 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
