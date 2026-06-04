#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned char v5 (unsigned char, signed short, unsigned int);
unsigned char (*v6) (unsigned char, signed short, unsigned int) = v5;
extern signed char v9 (unsigned short, unsigned int, unsigned short);
extern signed char (*v10) (unsigned short, unsigned int, unsigned short);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
void v13 (signed short, signed int, unsigned char);
void (*v14) (signed short, signed int, unsigned char) = v13;
signed short v15 (signed char, signed short);
signed short (*v16) (signed char, signed short) = v15;
extern signed short v17 (unsigned char, unsigned int);
extern signed short (*v18) (unsigned char, unsigned int);
extern signed char v19 (unsigned int, signed short, signed short);
extern signed char (*v20) (unsigned int, signed short, signed short);
extern signed char v21 (unsigned char, unsigned short, unsigned char);
extern signed char (*v22) (unsigned char, unsigned short, unsigned char);
extern void v23 (signed char);
extern void (*v24) (signed char);
signed char v25 (signed char, signed short, unsigned char);
signed char (*v26) (signed char, signed short, unsigned char) = v25;
extern unsigned char v27 (unsigned char, unsigned short, signed char);
extern unsigned char (*v28) (unsigned char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 4;
signed int v88 = -2;
signed short v87 = 1;

signed char v25 (signed char v90, signed short v91, unsigned char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 2U;
unsigned short v94 = 0;
signed char v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 1;
unsigned char v99 = 1;
unsigned char v98 = 5;
trace++;
switch (trace)
{
case 10: 
return v97;
default: abort ();
}
}
}
}

void v13 (signed short v101, signed int v102, unsigned char v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 4U;
unsigned int v105 = 6U;
unsigned short v104 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v107, signed short v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 2;
signed int v111 = -1;
unsigned char v110 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
