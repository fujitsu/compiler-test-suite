#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
unsigned int v5 (signed short, unsigned int);
unsigned int (*v6) (signed short, unsigned int) = v5;
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned char v9 (signed int, signed char);
extern unsigned char (*v10) (signed int, signed char);
extern signed int v11 (unsigned char, unsigned char, unsigned char);
extern signed int (*v12) (unsigned char, unsigned char, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned int v15 (signed short, signed char);
extern unsigned int (*v16) (signed short, signed char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
unsigned int v19 (signed char, unsigned int, signed short);
unsigned int (*v20) (signed char, unsigned int, signed short) = v19;
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v23 (signed char, unsigned short, signed int, signed short);
extern unsigned char (*v24) (signed char, unsigned short, signed int, signed short);
extern unsigned short v25 (signed int, unsigned short, signed short, unsigned int);
extern unsigned short (*v26) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v27 (signed char, signed int, signed int);
extern unsigned char (*v28) (signed char, signed int, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 0;
unsigned char v97 = 2;
unsigned int v96 = 7U;

unsigned int v19 (signed char v99, unsigned int v100, signed short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -1;
signed int v103 = -4;
unsigned char v102 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 4;
unsigned short v108 = 2;
unsigned int v107 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
