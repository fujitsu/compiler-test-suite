#include <stdlib.h>
extern void v1 (unsigned char, signed char, unsigned char);
extern void (*v2) (unsigned char, signed char, unsigned char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
unsigned int v5 (signed char, unsigned char, unsigned short, unsigned char);
unsigned int (*v6) (signed char, unsigned char, unsigned short, unsigned char) = v5;
signed short v7 (unsigned char, signed int);
signed short (*v8) (unsigned char, signed int) = v7;
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned int v11 (unsigned char, unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char, signed int);
extern unsigned short v13 (signed char, unsigned char, unsigned char, signed short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char, signed short);
extern unsigned short v17 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned char, unsigned short);
extern unsigned char v19 (signed short, unsigned int, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int, unsigned int);
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
void v27 (void);
void (*v28) (void) = v27;
extern signed char v29 (signed short, unsigned int);
extern signed char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -1;
unsigned char v79 = 1;
signed int v78 = -3;

void v27 (void)
{
{
for (;;) {
signed short v83 = -3;
unsigned char v82 = 6;
signed short v81 = -2;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
unsigned short v86 = 6;
unsigned int v85 = 6U;
signed int v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v87, signed int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 3U;
signed short v90 = 3;
unsigned short v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v92, unsigned char v93, unsigned short v94, unsigned char v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 2;
unsigned short v97 = 4;
unsigned char v96 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
