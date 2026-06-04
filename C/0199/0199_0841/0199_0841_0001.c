#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, unsigned int);
extern unsigned short (*v2) (unsigned char, signed short, unsigned int);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed short v5 (unsigned char, signed char, unsigned short, unsigned int);
extern signed short (*v6) (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
void v11 (signed char);
void (*v12) (signed char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v17 (signed char, signed short);
extern unsigned char (*v18) (signed char, signed short);
unsigned short v19 (signed short, signed int, signed int);
unsigned short (*v20) (signed short, signed int, signed int) = v19;
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
extern unsigned int v25 (unsigned short, signed int, signed int);
extern unsigned int (*v26) (unsigned short, signed int, signed int);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
extern unsigned int v29 (signed char, signed int, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = 2;
signed char v90 = -3;
unsigned char v89 = 6;

unsigned short v19 (signed short v92, signed int v93, signed int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 0;
signed short v96 = 2;
unsigned int v95 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
unsigned short v100 = 1;
signed int v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
