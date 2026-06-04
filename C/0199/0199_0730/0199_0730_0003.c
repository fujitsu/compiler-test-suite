#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed short, signed char, signed char, signed short);
extern signed int (*v6) (signed short, signed char, signed char, signed short);
extern unsigned int v7 (unsigned int, signed short);
extern unsigned int (*v8) (unsigned int, signed short);
extern void v9 (unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned short);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
void v13 (unsigned char);
void (*v14) (unsigned char) = v13;
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, signed int, signed char, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char, signed char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
signed char v25 (unsigned int, signed char, signed char);
signed char (*v26) (unsigned int, signed char, signed char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned int, signed short, unsigned char, signed short);
extern signed char (*v30) (unsigned int, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 6;
signed short v102 = 0;
signed int v101 = -3;

signed char v25 (unsigned int v104, signed char v105, signed char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 0;
signed short v108 = -4;
signed int v107 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 4U;
signed char v112 = 0;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
