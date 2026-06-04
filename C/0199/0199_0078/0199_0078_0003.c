#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned char, signed int, signed short, signed char);
extern unsigned char (*v4) (unsigned char, signed int, signed short, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
unsigned int v9 (unsigned char);
unsigned int (*v10) (unsigned char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (signed short, signed short, signed char);
extern void (*v18) (signed short, signed short, signed char);
extern signed char v19 (signed short, signed int, signed char);
extern signed char (*v20) (signed short, signed int, signed char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v27 (unsigned short, signed char, unsigned short);
void (*v28) (unsigned short, signed char, unsigned short) = v27;
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v103 = 2;
unsigned int v102 = 6U;
signed int v101 = 3;

void v27 (unsigned short v104, signed char v105, unsigned short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -4;
signed short v108 = -1;
signed short v107 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 2;
signed char v112 = -2;
signed short v111 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
