#include <stdlib.h>
extern unsigned int v1 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed int, unsigned short, unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, signed int);
extern unsigned char (*v10) (unsigned int, unsigned char, signed int);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
extern void v13 (void);
extern void (*v14) (void);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
extern unsigned char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
void v21 (unsigned int, unsigned short, signed int, signed int);
void (*v22) (unsigned int, unsigned short, signed int, signed int) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v85 = 0U;
unsigned char v84 = 1;
signed char v83 = -1;

void v21 (unsigned int v86, unsigned short v87, signed int v88, signed int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -1;
unsigned int v91 = 1U;
signed char v90 = -2;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v93;
v93 = v87 - v87;
v29 (v93);
}
break;
case 7: 
{
signed short v94;
unsigned short v95;
signed char v96;
v94 = -4 + 3;
v95 = v87 + 6;
v96 = v27 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 0U;
signed char v99 = 0;
signed char v98 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
