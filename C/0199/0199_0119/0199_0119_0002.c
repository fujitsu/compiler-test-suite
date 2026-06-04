#include <stdlib.h>
unsigned char v1 (signed char, signed char, signed int);
unsigned char (*v2) (signed char, signed char, signed int) = v1;
extern signed short v3 (unsigned int, unsigned short, signed int);
extern signed short (*v4) (unsigned int, unsigned short, signed int);
unsigned int v5 (signed char, unsigned short, unsigned int, unsigned int);
unsigned int (*v6) (signed char, unsigned short, unsigned int, unsigned int) = v5;
void v7 (unsigned char, signed short);
void (*v8) (unsigned char, signed short) = v7;
extern unsigned int v9 (unsigned char, signed int, signed int, signed short);
extern unsigned int (*v10) (unsigned char, signed int, signed int, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed int v13 (signed char);
signed int (*v14) (signed char) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
extern unsigned int v19 (signed short, unsigned char, signed short);
extern unsigned int (*v20) (signed short, unsigned char, signed short);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 0;
unsigned int v77 = 2U;
unsigned int v76 = 7U;

signed short v29 (void)
{
{
for (;;) {
unsigned char v81 = 0;
signed int v80 = -4;
signed int v79 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (unsigned char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
unsigned char v84 = 6;
unsigned int v83 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -4;
unsigned int v88 = 6U;
signed char v87 = -1;
trace++;
switch (trace)
{
case 6: 
return 1;
case 8: 
return -4;
default: abort ();
}
}
}
}

void v7 (unsigned char v90, signed short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 4;
unsigned char v93 = 7;
unsigned char v92 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v95, unsigned short v96, unsigned int v97, unsigned int v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 2;
signed int v100 = -2;
unsigned int v99 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v102, signed char v103, signed int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 3U;
unsigned char v106 = 6;
unsigned char v105 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v108;
signed int v109;
signed int v110;
signed short v111;
unsigned int v112;
v108 = v105 + v106;
v109 = v104 + 2;
v110 = 2 - -4;
v111 = -3 + -1;
v112 = v9 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return v105;
default: abort ();
}
}
}
}
