#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, unsigned short);
extern signed int (*v2) (unsigned short, unsigned short, unsigned short);
extern unsigned short v3 (unsigned short, signed short);
extern unsigned short (*v4) (unsigned short, signed short);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
unsigned short v7 (signed int, signed char);
unsigned short (*v8) (signed int, signed char) = v7;
extern signed int v9 (unsigned char, signed short, unsigned char, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned char, signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (signed char, signed short, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short, signed short);
extern signed short v15 (unsigned char, unsigned char);
extern signed short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned int, unsigned char);
extern void v21 (signed int, signed short);
extern void (*v22) (signed int, signed short);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (unsigned int, signed int, unsigned int, signed short);
extern signed short (*v28) (unsigned int, signed int, unsigned int, signed short);
unsigned int v29 (signed char);
unsigned int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 6U;
signed short v100 = -3;
signed int v99 = -4;

unsigned int v29 (signed char v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -3;
unsigned int v104 = 1U;
signed char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v106, signed char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -2;
unsigned short v109 = 7;
unsigned short v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
