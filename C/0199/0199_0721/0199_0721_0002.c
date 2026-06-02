#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (signed char, signed short, unsigned char, signed char);
extern signed short (*v6) (signed char, signed short, unsigned char, signed char);
extern unsigned short v7 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned int v9 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned int, unsigned char, unsigned char);
signed int v11 (unsigned int, signed int);
signed int (*v12) (unsigned int, signed int) = v11;
extern unsigned short v13 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short, signed short, unsigned short);
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
signed int v25 (signed char, unsigned int, unsigned int, unsigned short);
signed int (*v26) (signed char, unsigned int, unsigned int, unsigned short) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned int v29 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v85 = 0U;
unsigned char v84 = 3;
unsigned char v83 = 2;

signed int v25 (signed char v86, unsigned int v87, unsigned int v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 2;
unsigned short v91 = 6;
unsigned int v90 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v93, signed int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 6U;
signed short v96 = -1;
unsigned int v95 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed short v100 = -1;
unsigned int v99 = 1U;
signed int v98 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v101;
unsigned int v102;
unsigned char v103;
unsigned char v104;
unsigned int v105;
v101 = v100 + -3;
v102 = v99 - v99;
v103 = 2 - 7;
v104 = 2 + 7;
v105 = v9 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 3: 
return -1;
default: abort ();
}
}
}
}
