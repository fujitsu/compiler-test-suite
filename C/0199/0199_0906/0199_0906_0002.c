#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int);
extern signed char (*v2) (unsigned short, unsigned int);
unsigned char v3 (unsigned char, signed short);
unsigned char (*v4) (unsigned char, signed short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned int, signed short, unsigned short, signed char);
extern signed int (*v8) (unsigned int, signed short, unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (unsigned int, unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, unsigned int, signed char);
extern signed char v15 (signed int, signed short, unsigned int, unsigned char);
extern signed char (*v16) (signed int, signed short, unsigned int, unsigned char);
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed int v29 (unsigned char, unsigned int, signed int);
extern signed int (*v30) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v95 = 4;
unsigned char v94 = 6;
signed short v93 = 3;

signed short v27 (void)
{
{
for (;;) {
signed int v98 = -3;
unsigned int v97 = 3U;
signed int v96 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v99, signed short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 6;
unsigned int v102 = 7U;
unsigned short v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
