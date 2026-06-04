#include <stdlib.h>
extern unsigned short v3 (signed short, unsigned short);
extern unsigned short (*v4) (signed short, unsigned short);
extern unsigned int v5 (unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, signed short);
extern unsigned char v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, unsigned char, signed int);
extern signed char v9 (signed int, unsigned char, signed char);
extern signed char (*v10) (signed int, unsigned char, signed char);
extern signed int v11 (unsigned short, signed char, signed int, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int, signed int);
extern unsigned short v13 (signed char, unsigned int);
extern unsigned short (*v14) (signed char, unsigned int);
extern void v15 (unsigned short, signed int, signed short);
extern void (*v16) (unsigned short, signed int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
signed int v19 (void);
signed int (*v20) (void) = v19;
void v23 (unsigned int, signed int, unsigned int, unsigned short);
void (*v24) (unsigned int, signed int, unsigned int, unsigned short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v102 = -4;
unsigned short v101 = 0;
signed char v100 = -4;

void v23 (unsigned int v103, signed int v104, unsigned int v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 3;
signed int v108 = 2;
unsigned short v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed char v112 = -1;
signed char v111 = 0;
unsigned int v110 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
