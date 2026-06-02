#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed int v9 (signed short, unsigned short, unsigned int);
extern signed int (*v10) (signed short, unsigned short, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed short, signed short, unsigned char);
extern unsigned char (*v14) (unsigned char, signed short, signed short, unsigned char);
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
signed short v19 (unsigned int);
signed short (*v20) (unsigned int) = v19;
extern unsigned char v21 (signed char, unsigned char);
extern unsigned char (*v22) (signed char, unsigned char);
extern unsigned int v23 (unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (unsigned char, signed int, unsigned int);
extern unsigned char v25 (signed int, signed char);
extern unsigned char (*v26) (signed int, signed char);
signed char v27 (signed short, unsigned short);
signed char (*v28) (signed short, unsigned short) = v27;
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 1;
unsigned short v90 = 3;
signed char v89 = -1;

signed char v27 (signed short v92, unsigned short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = 3;
unsigned short v95 = 0;
unsigned short v94 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 1;
signed short v99 = -2;
unsigned short v98 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v103 = 0;
unsigned short v102 = 2;
signed int v101 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 3;
signed int v106 = 0;
unsigned char v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
