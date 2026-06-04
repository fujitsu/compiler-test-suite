#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed char);
extern unsigned int (*v2) (unsigned char, unsigned short, signed char);
extern unsigned char v3 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned short v5 (signed int, signed char, signed int, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int, signed int);
extern void v7 (void);
extern void (*v8) (void);
unsigned short v11 (signed short);
unsigned short (*v12) (signed short) = v11;
unsigned int v13 (signed char);
unsigned int (*v14) (signed char) = v13;
extern unsigned short v15 (signed char, unsigned int, signed int);
extern unsigned short (*v16) (signed char, unsigned int, signed int);
extern unsigned short v19 (unsigned short, signed int, unsigned short);
extern unsigned short (*v20) (unsigned short, signed int, unsigned short);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern void v25 (unsigned short, unsigned short, signed short, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned int v27 (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int v29 (unsigned char, signed int, signed short, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 0;
signed int v92 = 0;
signed short v91 = 3;

unsigned int v13 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 1;
signed int v96 = 0;
signed int v95 = -2;
trace++;
switch (trace)
{
case 4: 
return 7U;
default: abort ();
}
}
}
}

unsigned short v11 (signed short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -2;
unsigned char v100 = 4;
unsigned int v99 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
