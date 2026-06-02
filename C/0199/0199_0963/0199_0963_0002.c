#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (signed int, signed char);
extern signed int (*v8) (signed int, signed char);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
void v21 (unsigned char, signed char);
void (*v22) (unsigned char, signed char) = v21;
extern unsigned char v23 (signed short, signed int, signed char, unsigned short);
extern unsigned char (*v24) (signed short, signed int, signed char, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 5;
unsigned char v94 = 5;
signed short v93 = -4;

void v21 (unsigned char v96, signed char v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 3;
signed char v99 = -2;
signed short v98 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed short v103 = -3;
signed int v102 = -2;
unsigned char v101 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
