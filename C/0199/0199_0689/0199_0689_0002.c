#include <stdlib.h>
extern unsigned short v3 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned char);
unsigned int v5 (unsigned short, signed char);
unsigned int (*v6) (unsigned short, signed char) = v5;
extern signed int v7 (signed char, signed short);
extern signed int (*v8) (signed char, signed short);
extern unsigned int v9 (unsigned char, unsigned char);
extern unsigned int (*v10) (unsigned char, unsigned char);
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
signed int v15 (signed short, signed int);
signed int (*v16) (signed short, signed int) = v15;
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
unsigned char v21 (signed char, unsigned short, signed int, signed char);
unsigned char (*v22) (signed char, unsigned short, signed int, signed char) = v21;
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern void v25 (unsigned char, signed int);
extern void (*v26) (unsigned char, signed int);
extern unsigned short v27 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v68 = 5U;
unsigned char v67 = 1;
signed char v66 = 3;

unsigned char v21 (signed char v69, unsigned short v70, signed int v71, signed char v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -2;
unsigned int v74 = 0U;
unsigned short v73 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v76, signed int v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 1;
signed int v79 = -3;
signed int v78 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 6U;
signed short v83 = -4;
signed short v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v85, signed char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -2;
signed short v88 = -3;
unsigned char v87 = 2;
trace++;
switch (trace)
{
case 8: 
return 3U;
default: abort ();
}
}
}
}
