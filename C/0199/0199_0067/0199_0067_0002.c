#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
void v3 (unsigned char, unsigned short, signed int);
void (*v4) (unsigned char, unsigned short, signed int) = v3;
unsigned int v5 (signed int, signed int, signed short, unsigned int);
unsigned int (*v6) (signed int, signed int, signed short, unsigned int) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (signed short, unsigned int, unsigned int, signed short);
extern void (*v18) (signed short, unsigned int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (unsigned char, unsigned char, signed char);
extern signed short (*v24) (unsigned char, unsigned char, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed char v29 (signed short, signed char, unsigned int, signed char);
extern signed char (*v30) (signed short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v80 = 6U;
unsigned char v79 = 1;
unsigned char v78 = 7;

signed char v7 (void)
{
{
for (;;) {
signed short v83 = 0;
signed char v82 = 1;
signed char v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v84, signed int v85, signed short v86, unsigned int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 0;
unsigned short v89 = 4;
signed short v88 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v91;
signed char v92;
signed short v93;
v91 = 0U + 2U;
v92 = 1 - -2;
v93 = v9 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 3: 
{
signed int v94;
v94 = v21 ();
history[history_index++] = (int)v94;
}
break;
case 7: 
return v87;
default: abort ();
}
}
}
}

void v3 (unsigned char v95, unsigned short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 7;
unsigned char v99 = 4;
unsigned short v98 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
