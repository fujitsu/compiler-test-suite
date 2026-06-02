#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
extern unsigned int v11 (signed int, unsigned char, signed char, unsigned short);
extern unsigned int (*v12) (signed int, unsigned char, signed char, unsigned short);
extern unsigned short v13 (signed int, unsigned int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned int, unsigned short);
extern unsigned char v15 (unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned short, signed char);
extern unsigned short (*v18) (unsigned short, signed short, unsigned short, signed char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern signed int v23 (signed short, unsigned short, unsigned int, signed int);
extern signed int (*v24) (signed short, unsigned short, unsigned int, signed int);
signed char v25 (unsigned short, unsigned char, signed char, signed int);
signed char (*v26) (unsigned short, unsigned char, signed char, signed int) = v25;
extern unsigned short v27 (signed char, signed int, unsigned char, signed int);
extern unsigned short (*v28) (signed char, signed int, unsigned char, signed int);
extern unsigned short v29 (signed int, unsigned char, signed char, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v99 = -4;
unsigned int v98 = 0U;
unsigned int v97 = 3U;

signed char v25 (unsigned short v100, unsigned char v101, signed char v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 1U;
signed int v105 = 0;
signed char v104 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 0;
unsigned char v109 = 2;
signed short v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
