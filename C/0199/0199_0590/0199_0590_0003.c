#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern unsigned int v5 (signed int, unsigned int, signed int, unsigned short);
extern unsigned int (*v6) (signed int, unsigned int, signed int, unsigned short);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern void v9 (signed short, signed short, signed char, signed int);
extern void (*v10) (signed short, signed short, signed char, signed int);
extern signed char v11 (unsigned int, unsigned int, signed char);
extern signed char (*v12) (unsigned int, unsigned int, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned char v15 (signed int, signed char);
unsigned char (*v16) (signed int, signed char) = v15;
extern signed char v17 (signed char, unsigned short);
extern signed char (*v18) (signed char, unsigned short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed short v21 (signed int, signed short);
extern signed short (*v22) (signed int, signed short);
extern unsigned char v23 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v24) (signed char, unsigned int, unsigned short, signed short);
extern void v25 (void);
extern void (*v26) (void);
signed short v27 (signed int, signed short, signed char, unsigned int);
signed short (*v28) (signed int, signed short, signed char, unsigned int) = v27;
unsigned int v29 (signed short);
unsigned int (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = 0;
signed char v87 = -3;
signed short v86 = 1;

unsigned int v29 (signed short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 3;
unsigned char v91 = 4;
unsigned int v90 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (signed int v93, signed short v94, signed char v95, unsigned int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
unsigned short v98 = 7;
signed int v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed short v102 = -3;
unsigned int v101 = 5U;
unsigned char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v103, signed char v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 5;
signed short v106 = 0;
signed short v105 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
