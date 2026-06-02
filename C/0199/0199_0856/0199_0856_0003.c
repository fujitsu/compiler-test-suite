#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, unsigned int);
extern unsigned short (*v2) (signed int, unsigned int, signed short, unsigned int);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern unsigned short v9 (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned int v11 (signed int, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed int, unsigned short);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
extern signed short v15 (unsigned int, signed short, signed char, signed char);
extern signed short (*v16) (unsigned int, signed short, signed char, signed char);
void v17 (signed int, signed char, signed short, signed int);
void (*v18) (signed int, signed char, signed short, signed int) = v17;
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
void v21 (unsigned char, unsigned char, unsigned char);
void (*v22) (unsigned char, unsigned char, unsigned char) = v21;
extern signed char v23 (unsigned char, unsigned char, signed char, signed int);
extern signed char (*v24) (unsigned char, unsigned char, signed char, signed int);
extern signed short v25 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, signed char);
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
extern unsigned int v29 (signed int, unsigned int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 7;
signed char v97 = -4;
signed int v96 = 0;

void v21 (unsigned char v99, unsigned char v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 0;
unsigned short v103 = 1;
unsigned int v102 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed int v105, signed char v106, signed short v107, signed int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -2;
signed int v110 = -3;
signed char v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
