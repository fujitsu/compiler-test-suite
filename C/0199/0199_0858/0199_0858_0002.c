#include <stdlib.h>
extern void v1 (unsigned short, signed char, signed char);
extern void (*v2) (unsigned short, signed char, signed char);
extern void v3 (void);
extern void (*v4) (void);
void v5 (signed short, signed short);
void (*v6) (signed short, signed short) = v5;
extern unsigned char v7 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned int, signed char);
unsigned short v9 (signed char, signed char);
unsigned short (*v10) (signed char, signed char) = v9;
extern signed int v11 (unsigned int, unsigned int, unsigned int);
extern signed int (*v12) (unsigned int, unsigned int, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
unsigned short v15 (signed char);
unsigned short (*v16) (signed char) = v15;
signed short v17 (unsigned char, unsigned short, signed int);
signed short (*v18) (unsigned char, unsigned short, signed int) = v17;
extern unsigned int v19 (signed short, signed short, unsigned char, signed char);
extern unsigned int (*v20) (signed short, signed short, unsigned char, signed char);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed char v23 (unsigned int, unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned int, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, unsigned short, unsigned int);
extern unsigned short (*v28) (unsigned int, signed short, unsigned short, unsigned int);
extern signed int v29 (signed char, signed int);
extern signed int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = 2;
unsigned short v74 = 6;
unsigned int v73 = 5U;

signed short v17 (unsigned char v76, unsigned short v77, signed int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 2U;
signed char v80 = -2;
signed char v79 = 1;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return 2;
case 8: 
return -3;
default: abort ();
}
}
}
}

unsigned short v15 (signed char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
unsigned short v84 = 0;
unsigned int v83 = 6U;
trace++;
switch (trace)
{
case 10: 
{
signed short v86;
signed short v87;
unsigned char v88;
signed char v89;
unsigned int v90;
v86 = -3 - -1;
v87 = -3 - -4;
v88 = 3 - 3;
v89 = v82 - v82;
v90 = v19 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return v84;
default: abort ();
}
}
}
}

unsigned short v9 (signed char v91, signed char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 6;
unsigned short v94 = 1;
signed short v93 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -3;
signed int v99 = -4;
signed short v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
