#include <stdlib.h>
extern unsigned int v1 (signed char, signed short);
extern unsigned int (*v2) (signed char, signed short);
unsigned short v3 (unsigned short, unsigned int);
unsigned short (*v4) (unsigned short, unsigned int) = v3;
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern unsigned int v13 (signed short, signed short);
extern unsigned int (*v14) (signed short, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned short, signed short, unsigned char, signed short);
extern void (*v18) (unsigned short, signed short, unsigned char, signed short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v29 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v30) (unsigned short, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 6;
signed int v99 = -4;
unsigned char v98 = 3;

unsigned char v19 (void)
{
{
for (;;) {
unsigned short v103 = 2;
unsigned char v102 = 1;
signed int v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v104, unsigned int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 3;
signed short v107 = -1;
unsigned int v106 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
