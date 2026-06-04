#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short);
extern signed int v3 (signed char, signed int);
extern signed int (*v4) (signed char, signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed short v9 (signed int, unsigned int, signed short, signed int);
signed short (*v10) (signed int, unsigned int, signed short, signed int) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
static signed short v17 (unsigned char);
static signed short (*v18) (unsigned char) = v17;
void v19 (signed char, unsigned char, unsigned short, signed char);
void (*v20) (signed char, unsigned char, unsigned short, signed char) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern unsigned short v27 (unsigned char);
extern unsigned short (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 5;
unsigned short v77 = 4;
signed char v76 = 2;

signed char v25 (signed int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 3;
signed int v81 = -4;
unsigned short v80 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v83, unsigned char v84, unsigned short v85, signed char v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 0;
unsigned int v88 = 0U;
unsigned short v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v17 (unsigned char v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -2;
signed char v92 = 0;
unsigned char v91 = 4;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

signed short v9 (signed int v94, unsigned int v95, signed short v96, signed int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 5U;
unsigned char v99 = 2;
signed short v98 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v101;
signed short v102;
v101 = 7 + 1;
v102 = v17 (v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
