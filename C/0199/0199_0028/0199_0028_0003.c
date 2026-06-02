#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned short);
extern unsigned short (*v2) (unsigned int, unsigned short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
extern unsigned char v9 (signed char, signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed char, signed int, unsigned char, signed char);
extern signed char v11 (signed short);
extern signed char (*v12) (signed short);
extern void v13 (signed char);
extern void (*v14) (signed char);
void v15 (unsigned char, signed short);
void (*v16) (unsigned char, signed short) = v15;
unsigned int v17 (unsigned short, signed char, signed char);
unsigned int (*v18) (unsigned short, signed char, signed char) = v17;
extern unsigned short v19 (unsigned short, signed short, signed int, unsigned char);
extern unsigned short (*v20) (unsigned short, signed short, signed int, unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
signed short v23 (signed char, signed char);
signed short (*v24) (signed char, signed char) = v23;
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern unsigned int v27 (signed short, unsigned short, unsigned int);
extern unsigned int (*v28) (signed short, unsigned short, unsigned int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 5;
unsigned short v89 = 2;
signed short v88 = 1;

signed short v23 (signed char v91, signed char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 3;
signed int v94 = 2;
unsigned short v93 = 5;
trace++;
switch (trace)
{
case 8: 
return 1;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v96, signed char v97, signed char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 5;
signed char v100 = 0;
signed short v99 = 3;
trace++;
switch (trace)
{
case 10: 
return 3U;
default: abort ();
}
}
}
}

void v15 (unsigned char v102, signed short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 2;
unsigned char v105 = 6;
unsigned short v104 = 0;
trace++;
switch (trace)
{
case 1: 
return;
case 3: 
return;
default: abort ();
}
}
}
}
