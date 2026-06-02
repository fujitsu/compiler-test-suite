#include <stdlib.h>
extern signed int v1 (signed short, unsigned char);
extern signed int (*v2) (signed short, unsigned char);
extern unsigned short v3 (unsigned int, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, signed short, unsigned int, unsigned short);
signed short v5 (signed short, signed char, signed char, unsigned int);
signed short (*v6) (signed short, signed char, signed char, unsigned int) = v5;
extern unsigned char v7 (unsigned int, signed short);
extern unsigned char (*v8) (unsigned int, signed short);
extern signed short v9 (unsigned char, signed short, signed char);
extern signed short (*v10) (unsigned char, signed short, signed char);
extern unsigned short v11 (unsigned short, unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short, signed int);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern signed short v15 (signed short, signed short, signed char);
extern signed short (*v16) (signed short, signed short, signed char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
unsigned char v23 (signed short, signed short, signed int);
unsigned char (*v24) (signed short, signed short, signed int) = v23;
extern unsigned char v25 (signed short, signed char);
extern unsigned char (*v26) (signed short, signed char);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 1;
signed int v93 = 2;
unsigned short v92 = 1;

unsigned char v23 (signed short v95, signed short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -3;
unsigned char v99 = 7;
unsigned short v98 = 7;
trace++;
switch (trace)
{
case 1: 
return v99;
default: abort ();
}
}
}
}

void v19 (unsigned char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -2;
unsigned int v103 = 6U;
unsigned short v102 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v105, signed char v106, signed char v107, unsigned int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 7;
unsigned char v110 = 4;
signed short v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
