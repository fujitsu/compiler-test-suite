#include <stdlib.h>
signed char v3 (unsigned short, signed int, unsigned char);
signed char (*v4) (unsigned short, signed int, unsigned char) = v3;
void v5 (void);
void (*v6) (void) = v5;
extern unsigned char v7 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v8) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v9 (signed short, signed char, unsigned char);
extern unsigned char (*v10) (signed short, signed char, unsigned char);
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern signed short v19 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned short v23 (signed int, unsigned char, signed short, signed char);
extern unsigned short (*v24) (signed int, unsigned char, signed short, signed char);
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern signed short v27 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v28) (unsigned short, unsigned int, unsigned int, signed char);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v91 = 2U;
unsigned short v90 = 2;
signed short v89 = -3;

void v5 (void)
{
{
for (;;) {
signed short v94 = 3;
signed short v93 = -3;
signed int v92 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v95, signed int v96, unsigned char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 0;
signed int v99 = -1;
signed int v98 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v101;
signed short v102;
signed char v103;
unsigned char v104;
unsigned char v105;
v101 = v95 - v95;
v102 = -3 + 2;
v103 = -1 - -1;
v104 = v100 - v100;
v105 = v7 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}
