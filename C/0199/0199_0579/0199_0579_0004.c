#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern unsigned short v7 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v8) (unsigned int, signed short, signed char, signed char);
extern signed int v9 (unsigned short, signed int, unsigned int, signed char);
extern signed int (*v10) (unsigned short, signed int, unsigned int, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned short v13 (unsigned char, unsigned short, unsigned int, unsigned int);
unsigned short (*v14) (unsigned char, unsigned short, unsigned int, unsigned int) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
extern signed short v23 (unsigned short, signed int, signed short);
extern signed short (*v24) (unsigned short, signed int, signed short);
extern signed char v25 (unsigned char, signed char);
extern signed char (*v26) (unsigned char, signed char);
void v27 (signed int);
void (*v28) (signed int) = v27;
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v123 = 2;
unsigned int v122 = 4U;
unsigned short v121 = 0;

void v27 (signed int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 3;
signed short v126 = -1;
unsigned int v125 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v128, unsigned short v129, unsigned int v130, unsigned int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = 2;
unsigned int v133 = 3U;
unsigned char v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
