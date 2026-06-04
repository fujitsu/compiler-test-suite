#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern unsigned int v3 (signed int, unsigned char, signed short);
extern unsigned int (*v4) (signed int, unsigned char, signed short);
void v5 (unsigned int, signed char, unsigned short);
void (*v6) (unsigned int, signed char, unsigned short) = v5;
extern unsigned int v7 (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned char, unsigned char);
signed int v9 (signed int, signed short, unsigned int, unsigned int);
signed int (*v10) (signed int, signed short, unsigned int, unsigned int) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed int v17 (signed int, unsigned short, signed char, signed short);
extern signed int (*v18) (signed int, unsigned short, signed char, signed short);
extern signed int v19 (unsigned short, unsigned short);
extern signed int (*v20) (unsigned short, unsigned short);
extern signed short v21 (signed char, signed short, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, signed short, unsigned char);
extern signed int v23 (signed short, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned short);
extern void v25 (signed char);
extern void (*v26) (signed char);
extern signed int v27 (signed char, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed char, unsigned int, unsigned int, signed int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v93 = 4;
signed short v92 = 3;
signed int v91 = 3;

void v29 (void)
{
{
for (;;) {
signed char v96 = -3;
unsigned int v95 = 6U;
unsigned char v94 = 6;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 0;
signed short v99 = -2;
signed short v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v101, signed short v102, unsigned int v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 5U;
unsigned short v106 = 0;
unsigned short v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v108, signed char v109, unsigned short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 2;
signed char v112 = -2;
unsigned short v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
