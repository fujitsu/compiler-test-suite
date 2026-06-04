#include <stdlib.h>
extern void v1 (signed short, signed char, signed int);
extern void (*v2) (signed short, signed char, signed int);
unsigned short v3 (signed int, unsigned short);
unsigned short (*v4) (signed int, unsigned short) = v3;
extern signed int v5 (signed char, unsigned char, unsigned char, signed int);
extern signed int (*v6) (signed char, unsigned char, unsigned char, signed int);
unsigned int v7 (unsigned char);
unsigned int (*v8) (unsigned char) = v7;
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern void v11 (unsigned int, unsigned int, signed int, unsigned char);
extern void (*v12) (unsigned int, unsigned int, signed int, unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (signed char, unsigned char, signed int);
extern signed int (*v22) (signed char, unsigned char, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned int v25 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed char, signed short, unsigned int);
extern void v27 (unsigned short, signed char, unsigned char, signed short);
extern void (*v28) (unsigned short, signed char, unsigned char, signed short);
extern signed int v29 (unsigned int, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v140 = 0;
signed short v139 = 0;
signed int v138 = 3;

unsigned int v7 (unsigned char v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = -1;
signed char v143 = -4;
unsigned short v142 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v145, unsigned short v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 1;
signed int v148 = -3;
unsigned int v147 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
