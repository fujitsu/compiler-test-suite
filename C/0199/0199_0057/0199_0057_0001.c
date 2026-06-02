#include <stdlib.h>
extern signed char v3 (signed short);
extern signed char (*v4) (signed short);
signed char v5 (signed int, signed short, signed int, signed char);
signed char (*v6) (signed int, signed short, signed int, signed char) = v5;
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
signed char v11 (unsigned int, signed short, unsigned short, unsigned int);
signed char (*v12) (unsigned int, signed short, unsigned short, unsigned int) = v11;
signed short v13 (unsigned short, unsigned int);
signed short (*v14) (unsigned short, unsigned int) = v13;
extern unsigned int v15 (unsigned short, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned char, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned short v23 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned short, unsigned int);
void v25 (signed int, unsigned int);
void (*v26) (signed int, unsigned int) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed int, unsigned char, signed short, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = 0;
unsigned short v79 = 3;
signed char v78 = -1;

void v25 (signed int v81, unsigned int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 0;
unsigned char v84 = 3;
signed int v83 = -1;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
unsigned char v89 = 7;
signed int v88 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v91, signed short v92, unsigned short v93, unsigned int v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 1;
unsigned short v96 = 1;
unsigned short v95 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v98, signed short v99, signed int v100, signed char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 0;
signed char v103 = 1;
unsigned char v102 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
