#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned short);
extern unsigned int (*v2) (signed char, unsigned short);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned char v5 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned int, signed int, unsigned char, unsigned short);
unsigned int v7 (signed int);
unsigned int (*v8) (signed int) = v7;
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
unsigned short v19 (signed short);
unsigned short (*v20) (signed short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v103 = 0;
signed int v102 = -1;
signed char v101 = -1;

unsigned short v19 (signed short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = 3;
signed short v106 = 1;
signed int v105 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 1;
unsigned short v110 = 4;
signed int v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
