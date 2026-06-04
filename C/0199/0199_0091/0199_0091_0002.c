#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, signed int);
extern unsigned int (*v2) (unsigned int, signed short, signed int);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, unsigned int);
extern unsigned int (*v8) (signed int, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned int v13 (unsigned int, unsigned int, signed int, signed char);
unsigned int (*v14) (unsigned int, unsigned int, signed int, signed char) = v13;
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
signed short v17 (signed short, unsigned int, signed int, signed int);
signed short (*v18) (signed short, unsigned int, signed int, signed int) = v17;
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern void v23 (signed char, signed char, signed int);
extern void (*v24) (signed char, signed char, signed int);
unsigned short v25 (unsigned int);
unsigned short (*v26) (unsigned int) = v25;
extern signed int v27 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v28) (unsigned short, unsigned int, signed char, signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 6U;
signed int v91 = 0;
signed int v90 = -1;

unsigned short v25 (unsigned int v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 1;
unsigned short v95 = 6;
signed short v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v97, unsigned int v98, signed int v99, signed int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 3;
unsigned short v102 = 5;
unsigned short v101 = 2;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned int v104, unsigned int v105, signed int v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 7;
unsigned char v109 = 1;
unsigned char v108 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
