#include <stdlib.h>
extern void v3 (signed char, signed short);
extern void (*v4) (signed char, signed short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (signed int, unsigned short, signed char);
extern signed int (*v8) (signed int, unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
void v13 (signed char, unsigned char);
void (*v14) (signed char, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, signed short, signed short);
extern signed char (*v20) (signed int, signed short, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed int v23 (unsigned short, signed int, signed char);
extern signed int (*v24) (unsigned short, signed int, signed char);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v110 = 7;
unsigned char v109 = 3;
signed int v108 = 2;

void v13 (signed char v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -2;
unsigned short v114 = 2;
signed int v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
