#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, signed short, signed int);
extern unsigned short (*v2) (signed short, unsigned short, signed short, signed int);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned short v5 (unsigned short, signed char, unsigned char, unsigned int);
extern unsigned short (*v6) (unsigned short, signed char, unsigned char, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (unsigned char, signed int);
extern unsigned short (*v10) (unsigned char, signed int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (unsigned short, unsigned char, unsigned char, unsigned short);
extern signed char (*v16) (unsigned short, unsigned char, unsigned char, unsigned short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern signed char v19 (signed short, unsigned int, unsigned char, unsigned int);
extern signed char (*v20) (signed short, unsigned int, unsigned char, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed short, unsigned char, unsigned short, signed int);
extern signed short (*v24) (signed short, unsigned char, unsigned short, signed int);
extern signed char v25 (signed int, signed short, unsigned char, unsigned char);
extern signed char (*v26) (signed int, signed short, unsigned char, unsigned char);
extern signed char v27 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v28) (unsigned short, unsigned char, unsigned short, signed int);
void v29 (unsigned char, signed char);
void (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 2;
unsigned int v92 = 3U;
signed int v91 = 3;

void v29 (unsigned char v94, signed char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 0;
unsigned char v97 = 5;
signed short v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed char v101 = 1;
signed int v100 = 2;
signed int v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
