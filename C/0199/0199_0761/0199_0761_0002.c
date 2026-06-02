#include <stdlib.h>
extern signed char v1 (unsigned short, signed short, unsigned short);
extern signed char (*v2) (unsigned short, signed short, unsigned short);
extern unsigned short v3 (unsigned char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, unsigned char, signed char, signed short);
signed int v5 (signed short, unsigned char, unsigned char);
signed int (*v6) (signed short, unsigned char, unsigned char) = v5;
void v9 (signed char);
void (*v10) (signed char) = v9;
extern signed short v11 (signed char, signed char, signed int);
extern signed short (*v12) (signed char, signed char, signed int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
signed char v21 (unsigned int, signed char, signed short);
signed char (*v22) (unsigned int, signed char, signed short) = v21;
extern void v23 (unsigned char, unsigned int, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned int, signed int, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = -1;
unsigned short v84 = 0;
signed int v83 = -3;

signed char v21 (unsigned int v86, signed char v87, signed short v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 0;
unsigned char v90 = 1;
unsigned char v89 = 3;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed int v94 = -1;
signed short v93 = -4;
unsigned short v92 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 5U;
unsigned int v97 = 7U;
signed int v96 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v99, unsigned char v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 4;
unsigned int v103 = 5U;
signed short v102 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
