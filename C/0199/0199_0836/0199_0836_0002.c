#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char);
extern unsigned int (*v2) (unsigned short, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned int v7 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned char, unsigned short);
extern signed char v9 (signed char, signed char, signed char, signed char);
extern signed char (*v10) (signed char, signed char, signed char, signed char);
extern unsigned char v11 (unsigned int, unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, unsigned int, signed char);
extern signed char v13 (unsigned short, signed char, signed short);
extern signed char (*v14) (unsigned short, signed char, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
void v19 (signed short);
void (*v20) (signed short) = v19;
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
signed char v23 (unsigned short, unsigned char, unsigned char);
signed char (*v24) (unsigned short, unsigned char, unsigned char) = v23;
extern signed char v27 (unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned short, unsigned char, unsigned char);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -3;
signed int v79 = 1;
signed char v78 = 1;

signed char v23 (unsigned short v81, unsigned char v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 1;
unsigned short v85 = 1;
unsigned char v84 = 5;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return -3;
case 10: 
return -4;
default: abort ();
}
}
}
}

void v19 (signed short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 4;
unsigned char v89 = 2;
unsigned char v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed int v93 = 0;
signed short v92 = -4;
unsigned char v91 = 1;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed char v96 = 0;
unsigned short v95 = 4;
signed int v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
