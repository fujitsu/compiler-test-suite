#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned int v3 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v4) (unsigned short, signed int, unsigned short, signed short);
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
void v7 (unsigned char);
void (*v8) (unsigned char) = v7;
signed char v9 (signed int, unsigned char);
signed char (*v10) (signed int, unsigned char) = v9;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
static signed int v23 (signed short, signed short);
static signed int (*v24) (signed short, signed short) = v23;
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned short, unsigned short);
extern void v29 (unsigned char, signed int, unsigned char, unsigned int);
extern void (*v30) (unsigned char, signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = 2;
unsigned char v76 = 7;
signed char v75 = -2;

static signed int v23 (signed short v78, signed short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 3;
signed short v81 = 0;
signed char v80 = -4;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v83;
unsigned int v84;
unsigned char v85;
v83 = 5 - 1;
v84 = 1U - 4U;
v85 = v19 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

signed char v9 (signed int v86, unsigned char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 1;
signed short v89 = -4;
unsigned int v88 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 5;
signed short v93 = 0;
unsigned short v92 = 7;
trace++;
switch (trace)
{
case 9: 
{
signed short v95;
signed short v96;
signed int v97;
v95 = -2 - 0;
v96 = -2 - 1;
v97 = v23 (v95, v96);
history[history_index++] = (int)v97;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
