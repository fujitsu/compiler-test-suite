#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned short, unsigned int, signed int);
extern signed short (*v4) (unsigned short, unsigned int, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
void v7 (void);
void (*v8) (void) = v7;
extern void v9 (unsigned int, unsigned short, signed short);
extern void (*v10) (unsigned int, unsigned short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned char v13 (unsigned int, signed char, signed short);
unsigned char (*v14) (unsigned int, signed char, signed short) = v13;
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned int v21 (unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (unsigned short, unsigned int, signed short);
extern unsigned int v23 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed short, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 0;
signed char v103 = -2;
unsigned short v102 = 6;

unsigned char v13 (unsigned int v105, signed char v106, signed short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 6;
signed char v109 = -2;
signed int v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned char v113 = 2;
unsigned char v112 = 5;
unsigned char v111 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
