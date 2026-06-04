#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned int, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short, unsigned short);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (signed short, unsigned char, signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char, signed short, unsigned char);
void v13 (void);
void (*v14) (void) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed char, signed char);
extern signed int (*v18) (signed char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned int v25 (unsigned char, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int);
signed char v27 (signed int, unsigned char, unsigned short, unsigned short);
signed char (*v28) (signed int, unsigned char, unsigned short, unsigned short) = v27;
unsigned short v29 (signed int, unsigned int);
unsigned short (*v30) (signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v78 = 2;
unsigned int v77 = 5U;
signed short v76 = -4;

unsigned short v29 (signed int v79, unsigned int v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -3;
unsigned char v82 = 1;
unsigned char v81 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed int v84, unsigned char v85, unsigned short v86, unsigned short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 2;
signed char v89 = -4;
unsigned char v88 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned short v93 = 3;
unsigned short v92 = 0;
unsigned short v91 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v94;
unsigned int v95;
unsigned int v96;
v94 = 5 + 3;
v95 = 6U - 0U;
v96 = v25 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 6: 
{
unsigned char v97;
unsigned int v98;
unsigned int v99;
v97 = 5 + 7;
v98 = 3U - 2U;
v99 = v25 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}
