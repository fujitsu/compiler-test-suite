#include <stdlib.h>
extern signed int v1 (unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned short, signed int, unsigned short);
signed short v3 (void);
signed short (*v4) (void) = v3;
void v5 (signed short);
void (*v6) (signed short) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned char, signed short, signed int, signed short);
extern void (*v10) (unsigned char, signed short, signed int, signed short);
signed short v11 (signed short);
signed short (*v12) (signed short) = v11;
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
extern unsigned char v15 (signed short, signed short);
extern unsigned char (*v16) (signed short, signed short);
extern unsigned short v17 (signed char, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char);
extern unsigned char v21 (unsigned char, unsigned char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char);
extern unsigned char v23 (signed char, unsigned char, signed int);
extern unsigned char (*v24) (signed char, unsigned char, signed int);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned int v27 (unsigned char, unsigned char, signed char);
extern unsigned int (*v28) (unsigned char, unsigned char, signed char);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v93 = 0;
unsigned int v92 = 7U;
signed char v91 = -4;

signed char v29 (void)
{
{
for (;;) {
signed short v96 = -4;
unsigned short v95 = 5;
unsigned int v94 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 7;
signed short v99 = -2;
unsigned char v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = 2;
signed int v103 = -1;
signed short v102 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned short v107 = 0;
signed char v106 = -4;
signed char v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
