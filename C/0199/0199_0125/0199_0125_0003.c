#include <stdlib.h>
extern void v3 (signed int, signed short);
extern void (*v4) (signed int, signed short);
extern unsigned int v5 (signed char, unsigned short, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern unsigned int v13 (unsigned char, signed char, unsigned short);
extern unsigned int (*v14) (unsigned char, signed char, unsigned short);
extern unsigned char v15 (signed int, signed char, signed int, unsigned int);
extern unsigned char (*v16) (signed int, signed char, signed int, unsigned int);
unsigned int v17 (unsigned char, unsigned char);
unsigned int (*v18) (unsigned char, unsigned char) = v17;
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern unsigned char v21 (unsigned short);
extern unsigned char (*v22) (unsigned short);
extern void v23 (unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned int, signed char, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
unsigned char v29 (unsigned int, signed char);
unsigned char (*v30) (unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v124 = 0;
unsigned int v123 = 3U;
signed short v122 = -4;

unsigned char v29 (unsigned int v125, signed char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 1;
signed char v128 = 0;
unsigned char v127 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v130, unsigned char v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 1;
unsigned char v133 = 3;
signed int v132 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
