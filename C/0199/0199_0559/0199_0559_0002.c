#include <stdlib.h>
extern signed char v1 (unsigned short, signed char, signed char);
extern signed char (*v2) (unsigned short, signed char, signed char);
extern signed int v3 (signed int, unsigned char, signed short);
extern signed int (*v4) (signed int, unsigned char, signed short);
extern signed char v5 (unsigned char, unsigned int, signed int);
extern signed char (*v6) (unsigned char, unsigned int, signed int);
unsigned short v7 (unsigned int, signed short);
unsigned short (*v8) (unsigned int, signed short) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v11 (signed short, unsigned char, unsigned char, unsigned short);
extern unsigned short (*v12) (signed short, unsigned char, unsigned char, unsigned short);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
extern signed short v15 (unsigned int, unsigned int, signed short);
extern signed short (*v16) (unsigned int, unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (unsigned short, unsigned short, signed int);
extern void (*v20) (unsigned short, unsigned short, signed int);
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
extern signed short v23 (signed char, signed short, signed char, unsigned short);
extern signed short (*v24) (signed char, signed short, signed char, unsigned short);
extern unsigned short v25 (unsigned int, signed short, signed char, signed short);
extern unsigned short (*v26) (unsigned int, signed short, signed char, signed short);
extern unsigned char v27 (signed char, unsigned short, signed short, unsigned char);
extern unsigned char (*v28) (signed char, unsigned short, signed short, unsigned char);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 2;
signed short v90 = 0;
unsigned short v89 = 0;

unsigned short v13 (signed char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 3;
signed char v94 = -4;
signed int v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v98 = 0;
unsigned char v97 = 2;
signed int v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v99, signed short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 1;
signed char v102 = -4;
signed int v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
