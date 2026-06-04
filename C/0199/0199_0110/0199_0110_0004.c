#include <stdlib.h>
signed int v3 (signed int, unsigned char, unsigned char);
signed int (*v4) (signed int, unsigned char, unsigned char) = v3;
extern signed short v5 (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (unsigned char, unsigned char, unsigned int, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int, unsigned short);
extern unsigned short (*v8) (signed short, unsigned char, signed int, unsigned short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern void v15 (unsigned int, unsigned short, signed char);
extern void (*v16) (unsigned int, unsigned short, signed char);
extern unsigned short v17 (signed char, signed int);
extern unsigned short (*v18) (signed char, signed int);
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
extern signed short v23 (signed char, signed char, signed int);
extern signed short (*v24) (signed char, signed char, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed short, signed char);
extern signed short (*v28) (signed short, signed char);
extern unsigned short v29 (unsigned int, signed short, signed int);
extern unsigned short (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v143 = 0U;
unsigned int v142 = 7U;
unsigned char v141 = 1;

signed int v3 (signed int v144, unsigned char v145, unsigned char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned int v149 = 0U;
signed char v148 = 2;
signed char v147 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
