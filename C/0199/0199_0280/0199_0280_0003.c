#include <stdlib.h>
unsigned int v1 (signed int);
unsigned int (*v2) (signed int) = v1;
extern void v3 (unsigned char, signed int, signed char);
extern void (*v4) (unsigned char, signed int, signed char);
extern signed char v5 (signed int, signed short, unsigned int, signed int);
extern signed char (*v6) (signed int, signed short, unsigned int, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern unsigned char v9 (signed short, unsigned char, signed char, unsigned short);
extern unsigned char (*v10) (signed short, unsigned char, signed char, unsigned short);
extern signed short v11 (signed char, signed int, signed int);
extern signed short (*v12) (signed char, signed int, signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
extern unsigned int v17 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned int v19 (signed char, signed char, signed short, signed short);
extern unsigned int (*v20) (signed char, signed char, signed short, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
void v25 (unsigned int, signed char);
void (*v26) (unsigned int, signed char) = v25;
signed short v27 (signed int, unsigned short, unsigned int, signed char);
signed short (*v28) (signed int, unsigned short, unsigned int, signed char) = v27;
extern signed short v29 (signed int, signed short, signed char);
extern signed short (*v30) (signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v86 = 3;
unsigned int v85 = 5U;
unsigned int v84 = 2U;

signed short v27 (signed int v87, unsigned short v88, unsigned int v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -3;
unsigned char v92 = 0;
signed short v91 = 3;
trace++;
switch (trace)
{
case 5: 
return 0;
case 11: 
return -1;
default: abort ();
}
}
}
}

void v25 (unsigned int v94, signed char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 0U;
signed char v97 = 0;
signed int v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 3;
signed char v101 = -2;
signed short v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -3;
signed char v105 = -3;
unsigned short v104 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v107;
signed short v108;
unsigned int v109;
signed int v110;
signed char v111;
v107 = v103 - v103;
v108 = -1 - v106;
v109 = 2U + 0U;
v110 = -4 + v103;
v111 = v5 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 14: 
return 0U;
default: abort ();
}
}
}
}
