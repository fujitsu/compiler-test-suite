#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short);
extern void (*v4) (signed char, unsigned short);
extern signed char v5 (signed short, signed char, signed char, unsigned char);
extern signed char (*v6) (signed short, signed char, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (signed char, signed char);
extern signed char (*v10) (signed char, signed char);
extern signed short v11 (signed int, unsigned int);
extern signed short (*v12) (signed int, unsigned int);
extern signed short v15 (unsigned short, unsigned char, unsigned short);
extern signed short (*v16) (unsigned short, unsigned char, unsigned short);
extern signed short v17 (signed int, unsigned int, signed short);
extern signed short (*v18) (signed int, unsigned int, signed short);
unsigned int v19 (unsigned char, unsigned int, signed char, unsigned short);
unsigned int (*v20) (unsigned char, unsigned int, signed char, unsigned short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed char v23 (signed char, unsigned short, unsigned char);
signed char (*v24) (signed char, unsigned short, unsigned char) = v23;
extern signed short v25 (unsigned short, unsigned char, signed int);
extern signed short (*v26) (unsigned short, unsigned char, signed int);
extern signed char v29 (signed short, unsigned int, signed short);
extern signed char (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 4;
signed char v96 = -4;
signed char v95 = 1;

signed char v23 (signed char v98, unsigned short v99, unsigned char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -1;
unsigned short v102 = 4;
unsigned int v101 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v104, unsigned int v105, signed char v106, unsigned short v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -3;
signed char v109 = -1;
signed char v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
