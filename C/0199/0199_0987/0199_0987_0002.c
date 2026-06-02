#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed char v5 (signed int, unsigned short, signed short);
extern signed char (*v6) (signed int, unsigned short, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v11 (signed char, signed int, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, signed int, unsigned short);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned char v15 (unsigned short, unsigned int);
unsigned char (*v16) (unsigned short, unsigned int) = v15;
unsigned short v17 (signed char);
unsigned short (*v18) (signed char) = v17;
extern signed short v19 (unsigned int, signed short, unsigned int);
extern signed short (*v20) (unsigned int, signed short, unsigned int);
extern unsigned char v21 (unsigned char, signed char, unsigned short, signed int);
extern unsigned char (*v22) (unsigned char, signed char, unsigned short, signed int);
signed char v23 (unsigned char, unsigned short, unsigned int);
signed char (*v24) (unsigned char, unsigned short, unsigned int) = v23;
extern unsigned int v25 (unsigned char, signed char, signed short, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed short, unsigned int);
extern void v27 (signed char, signed char, unsigned int);
extern void (*v28) (signed char, signed char, unsigned int);
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v86 = 3;
unsigned short v85 = 0;
signed char v84 = -2;

signed char v23 (unsigned char v87, unsigned short v88, unsigned int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 0;
unsigned short v91 = 0;
signed int v90 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed char v93;
signed char v94;
unsigned int v95;
v93 = -1 - 1;
v94 = 2 + -1;
v95 = 0U - 4U;
v27 (v93, v94, v95);
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 7;
signed int v98 = 2;
signed char v97 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v100, unsigned int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 2;
signed int v103 = 0;
unsigned short v102 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
