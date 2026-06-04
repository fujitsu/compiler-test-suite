#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char, signed int);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char, signed int);
extern signed int v3 (signed char, signed char, signed int, unsigned char);
extern signed int (*v4) (signed char, signed char, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
void v7 (unsigned int, unsigned short, unsigned int);
void (*v8) (unsigned int, unsigned short, unsigned int) = v7;
extern signed int v9 (unsigned short, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned short, unsigned short, unsigned char, signed char);
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v15 (unsigned int, signed int);
extern signed short (*v16) (unsigned int, signed int);
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
void v23 (unsigned int, unsigned short, signed short, unsigned char);
void (*v24) (unsigned int, unsigned short, signed short, unsigned char) = v23;
extern unsigned short v25 (signed short, unsigned int, signed int, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int, signed int, unsigned int);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
extern signed short v29 (signed char, unsigned int, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 2;
signed int v84 = -3;
unsigned short v83 = 2;

void v23 (unsigned int v86, unsigned short v87, signed short v88, unsigned char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 0;
signed int v91 = 1;
signed short v90 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v93;
unsigned int v94;
unsigned int v95;
signed short v96;
v93 = 1 + 0;
v94 = 5U + v86;
v95 = v86 + v86;
v96 = v29 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 5: 
{
signed char v97;
unsigned int v98;
unsigned int v99;
signed short v100;
v97 = 1 - -3;
v98 = 2U - 6U;
v99 = 3U - 7U;
v100 = v29 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned char v103 = 0;
unsigned char v102 = 6;
signed int v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 0;
signed short v106 = -4;
signed int v105 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned int v108, unsigned short v109, unsigned int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 0U;
signed int v112 = -4;
signed int v111 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
