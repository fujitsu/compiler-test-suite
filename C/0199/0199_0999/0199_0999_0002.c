#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
signed short v7 (signed short, unsigned int, unsigned short);
signed short (*v8) (signed short, unsigned int, unsigned short) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
void v15 (unsigned char, signed char);
void (*v16) (unsigned char, signed char) = v15;
extern void v17 (unsigned int, unsigned char, unsigned short);
extern void (*v18) (unsigned int, unsigned char, unsigned short);
extern signed short v19 (signed short, signed short, signed char);
extern signed short (*v20) (signed short, signed short, signed char);
extern unsigned char v23 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (unsigned int, signed short, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = 2;
signed char v80 = -4;
unsigned short v79 = 5;

unsigned short v27 (void)
{
{
for (;;) {
unsigned char v84 = 3;
unsigned short v83 = 7;
signed int v82 = -3;
trace++;
switch (trace)
{
case 7: 
{
signed short v85;
signed short v86;
signed char v87;
signed short v88;
v85 = -1 + -1;
v86 = -3 + 0;
v87 = 2 + 2;
v88 = v19 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}

void v15 (unsigned char v89, signed char v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = -2;
signed int v92 = -1;
signed int v91 = 2;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

signed short v7 (signed short v94, unsigned int v95, unsigned short v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -2;
unsigned short v98 = 2;
unsigned char v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
