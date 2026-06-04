#include <stdlib.h>
unsigned char v1 (signed int, unsigned short, signed char);
unsigned char (*v2) (signed int, unsigned short, signed char) = v1;
extern unsigned int v3 (signed char, signed char, signed short, signed int);
extern unsigned int (*v4) (signed char, signed char, signed short, signed int);
signed char v5 (signed int, unsigned int, unsigned char);
signed char (*v6) (signed int, unsigned int, unsigned char) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed short v9 (unsigned short);
signed short (*v10) (unsigned short) = v9;
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
void v13 (unsigned int);
void (*v14) (unsigned int) = v13;
unsigned char v15 (signed int, unsigned int);
unsigned char (*v16) (signed int, unsigned int) = v15;
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
void v19 (unsigned char, signed short, unsigned int);
void (*v20) (unsigned char, signed short, unsigned int) = v19;
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern unsigned char v27 (unsigned short, unsigned char, signed short);
extern unsigned char (*v28) (unsigned short, unsigned char, signed short);
extern unsigned char v29 (unsigned int, unsigned char, signed int);
extern unsigned char (*v30) (unsigned int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 4;
signed short v81 = -4;
signed short v80 = -3;

void v19 (unsigned char v83, signed short v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -4;
signed int v87 = -4;
unsigned char v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v89, unsigned int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 6U;
unsigned int v92 = 6U;
signed int v91 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -4;
unsigned char v96 = 5;
signed char v95 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 1;
unsigned char v100 = 1;
signed char v99 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v102, unsigned int v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 2;
unsigned int v106 = 3U;
unsigned char v105 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v108, unsigned short v109, signed char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 6;
unsigned short v112 = 2;
signed int v111 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
v114 = v7 ();
history[history_index++] = (int)v114;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
