#include <stdlib.h>
signed int v3 (signed short, signed char, signed char, signed short);
signed int (*v4) (signed short, signed char, signed char, signed short) = v3;
extern void v5 (signed short);
extern void (*v6) (signed short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
unsigned int v11 (unsigned int, unsigned char, signed char);
unsigned int (*v12) (unsigned int, unsigned char, signed char) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v16) (signed int, unsigned char, signed short, unsigned char);
signed char v17 (signed int, unsigned char);
signed char (*v18) (signed int, unsigned char) = v17;
extern signed char v19 (signed char, signed char, signed char);
extern signed char (*v20) (signed char, signed char, signed char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (signed short, unsigned short, unsigned char);
extern signed char (*v28) (signed short, unsigned short, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = 2;
unsigned char v94 = 3;
unsigned short v93 = 2;

signed char v17 (signed int v96, unsigned char v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 6;
unsigned short v99 = 2;
signed char v98 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v101;
v101 = v29 ();
history[history_index++] = (int)v101;
}
break;
case 3: 
return -2;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v102, unsigned char v103, signed char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = -2;
signed short v106 = 0;
signed char v105 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v110 = 6U;
unsigned char v109 = 3;
unsigned char v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v111, signed char v112, signed char v113, signed short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 2;
signed short v116 = -3;
signed char v115 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
