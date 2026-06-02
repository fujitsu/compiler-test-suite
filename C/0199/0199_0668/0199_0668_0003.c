#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
extern signed int v9 (signed char, signed char, signed char);
extern signed int (*v10) (signed char, signed char, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed char v17 (unsigned short, signed int, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, signed int, unsigned short);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
signed int v25 (signed char);
signed int (*v26) (signed char) = v25;
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
unsigned short v29 (signed int, unsigned short, signed char, signed char);
unsigned short (*v30) (signed int, unsigned short, signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v87 = 0;
signed char v86 = 0;
signed char v85 = 1;

unsigned short v29 (signed int v88, unsigned short v89, signed char v90, signed char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 4U;
unsigned int v93 = 3U;
unsigned short v92 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
signed int v97 = 3;
unsigned short v96 = 7;
signed short v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 6;
signed short v100 = -1;
unsigned short v99 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned char v104 = 3;
unsigned char v103 = 7;
signed short v102 = 3;
trace++;
switch (trace)
{
case 8: 
return v102;
default: abort ();
}
}
}
}
