#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed int, signed char);
extern signed int (*v2) (signed int, signed short, signed int, signed char);
unsigned char v3 (signed int, unsigned int, signed char, signed char);
unsigned char (*v4) (signed int, unsigned int, signed char, signed char) = v3;
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed short, unsigned char, signed short);
extern signed short (*v20) (signed short, unsigned char, signed short);
signed char v21 (unsigned int);
signed char (*v22) (unsigned int) = v21;
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
extern unsigned short v25 (signed int, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed int);
extern unsigned char v27 (signed int, signed int, unsigned short);
extern unsigned char (*v28) (signed int, signed int, unsigned short);
extern void v29 (signed int, signed int, signed short);
extern void (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v132 = 0;
signed short v131 = 2;
signed char v130 = 1;

signed char v21 (unsigned int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 0;
unsigned short v135 = 2;
signed char v134 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v137, unsigned int v138, signed char v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 1;
unsigned char v142 = 1;
signed int v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
