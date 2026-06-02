#include <stdlib.h>
extern signed short v1 (unsigned short, signed short, signed short, unsigned int);
extern signed short (*v2) (unsigned short, signed short, signed short, unsigned int);
extern unsigned short v3 (unsigned int, signed char, unsigned char);
extern unsigned short (*v4) (unsigned int, signed char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
unsigned short v9 (signed char);
unsigned short (*v10) (signed char) = v9;
void v11 (unsigned short, unsigned int, unsigned short);
void (*v12) (unsigned short, unsigned int, unsigned short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed char, unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (signed char, unsigned short, unsigned short, signed char);
extern signed int v21 (signed short, signed char);
extern signed int (*v22) (signed short, signed char);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned int v25 (unsigned char, signed char, signed int, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed int, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 3;
signed char v81 = -3;
unsigned char v80 = 6;

void v11 (unsigned short v83, unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = 3;
unsigned short v87 = 7;
unsigned char v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 5;
unsigned short v91 = 3;
unsigned int v90 = 0U;
trace++;
switch (trace)
{
case 6: 
{
signed char v93;
unsigned short v94;
unsigned short v95;
signed char v96;
unsigned char v97;
v93 = v89 - v89;
v94 = 2 - v91;
v95 = 6 + 2;
v96 = v89 - v89;
v97 = v19 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 8: 
return v91;
case 10: 
return v91;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed char v100 = -4;
signed short v99 = 3;
unsigned char v98 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
