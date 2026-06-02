#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned char, unsigned short);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned short, unsigned short);
extern signed short (*v8) (unsigned short, unsigned short);
signed char v9 (signed int, signed char, unsigned int, unsigned int);
signed char (*v10) (signed int, signed char, unsigned int, unsigned int) = v9;
void v11 (signed short, unsigned short, signed char, unsigned char);
void (*v12) (signed short, unsigned short, signed char, unsigned char) = v11;
signed int v13 (unsigned char, signed int, unsigned int);
signed int (*v14) (unsigned char, signed int, unsigned int) = v13;
extern signed int v15 (signed short, unsigned short, signed int, signed char);
extern signed int (*v16) (signed short, unsigned short, signed int, signed char);
extern signed char v17 (unsigned int, unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char, signed short);
extern signed char (*v22) (unsigned char, signed short);
extern unsigned char v23 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v24) (unsigned char, signed char, unsigned short, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v29 (signed short, unsigned short, signed int, signed int);
extern signed int (*v30) (signed short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = -3;
unsigned int v89 = 5U;
signed int v88 = 3;

signed int v13 (unsigned char v91, signed int v92, unsigned int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 0;
unsigned int v95 = 4U;
signed int v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v97, unsigned short v98, signed char v99, unsigned char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 0;
unsigned short v102 = 4;
unsigned int v101 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed int v104, signed char v105, unsigned int v106, unsigned int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = 0;
unsigned short v109 = 4;
unsigned int v108 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
