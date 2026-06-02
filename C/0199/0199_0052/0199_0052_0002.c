#include <stdlib.h>
signed short v1 (unsigned char);
signed short (*v2) (unsigned char) = v1;
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
unsigned short v11 (unsigned short, unsigned int, unsigned char, unsigned int);
unsigned short (*v12) (unsigned short, unsigned int, unsigned char, unsigned int) = v11;
extern void v13 (signed char, unsigned int, signed char, signed int);
extern void (*v14) (signed char, unsigned int, signed char, signed int);
void v15 (signed int);
void (*v16) (signed int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned char);
extern unsigned char v23 (unsigned short, signed short, signed int, signed short);
extern unsigned char (*v24) (unsigned short, signed short, signed int, signed short);
extern unsigned int v25 (unsigned char, signed char, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, unsigned int);
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v70 = 2;
signed short v69 = 1;
signed short v68 = 0;

void v15 (signed int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 6U;
unsigned int v73 = 3U;
unsigned char v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v75, unsigned int v76, unsigned char v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = 3;
unsigned short v80 = 3;
unsigned int v79 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v84 = 7U;
unsigned int v83 = 3U;
unsigned short v82 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 6U;
unsigned int v87 = 5U;
unsigned char v86 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v89;
unsigned int v90;
signed char v91;
signed int v92;
v89 = 0 + 0;
v90 = 2U - v87;
v91 = -4 + 2;
v92 = -4 + -3;
v13 (v89, v90, v91, v92);
}
break;
case 2: 
{
signed short v93;
signed int v94;
v93 = -1 + -1;
v94 = v5 (v93);
history[history_index++] = (int)v94;
}
break;
case 4: 
{
signed short v95;
signed int v96;
v95 = -3 + 0;
v96 = v5 (v95);
history[history_index++] = (int)v96;
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
