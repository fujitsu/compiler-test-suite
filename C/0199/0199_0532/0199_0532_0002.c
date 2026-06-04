#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed char, unsigned int);
extern signed short (*v6) (signed char, unsigned int);
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
unsigned int v13 (unsigned short);
unsigned int (*v14) (unsigned short) = v13;
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned int v19 (signed char, unsigned short, signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned short, signed char, unsigned int);
signed int v21 (signed short, signed int, unsigned short);
signed int (*v22) (signed short, signed int, unsigned short) = v21;
void v23 (unsigned char);
void (*v24) (unsigned char) = v23;
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned char v27 (signed char, signed short, unsigned char);
extern unsigned char (*v28) (signed char, signed short, unsigned char);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = -3;
signed short v81 = 3;
unsigned short v80 = 5;

void v23 (unsigned char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 0U;
signed char v85 = -2;
signed short v84 = -3;
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

signed int v21 (signed short v87, signed int v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 0;
unsigned int v91 = 2U;
unsigned short v90 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 2;
signed char v95 = 0;
unsigned int v94 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
