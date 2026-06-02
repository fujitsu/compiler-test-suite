#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed short v7 (unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int);
unsigned int v9 (signed char, signed short, unsigned char, signed char);
unsigned int (*v10) (signed char, signed short, unsigned char, signed char) = v9;
extern signed short v11 (signed char, signed short, unsigned short, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned short, unsigned short);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (unsigned int, signed int);
extern void (*v16) (unsigned int, signed int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
unsigned char v19 (signed char, unsigned char);
unsigned char (*v20) (signed char, unsigned char) = v19;
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 4U;
unsigned char v98 = 1;
signed int v97 = -3;

unsigned char v19 (signed char v100, unsigned char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -4;
signed char v103 = -1;
signed short v102 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v105, signed short v106, unsigned char v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 7U;
signed int v110 = 3;
signed int v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
