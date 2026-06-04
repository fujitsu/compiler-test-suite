#include <stdlib.h>
extern signed int v1 (unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned int, unsigned short);
extern signed char (*v6) (unsigned int, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed int, signed int, unsigned int);
extern unsigned int (*v10) (signed int, signed int, unsigned int);
unsigned int v11 (signed char, signed short, signed char);
unsigned int (*v12) (signed char, signed short, signed char) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed char, signed int, unsigned char, unsigned char);
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char);
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v143 = 0U;
unsigned int v142 = 3U;
signed char v141 = -2;

unsigned int v11 (signed char v144, signed short v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 1;
signed int v148 = 0;
unsigned short v147 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
