#include <stdlib.h>
signed char v1 (unsigned int, signed int, unsigned char, unsigned char);
signed char (*v2) (unsigned int, signed int, unsigned char, unsigned char) = v1;
unsigned char v3 (signed short);
unsigned char (*v4) (signed short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned char v7 (unsigned int, signed int);
unsigned char (*v8) (unsigned int, signed int) = v7;
signed int v9 (signed short, signed char, unsigned int, unsigned char);
signed int (*v10) (signed short, signed char, unsigned int, unsigned char) = v9;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned char v19 (signed int, signed int, signed short);
extern unsigned char (*v20) (signed int, signed int, signed short);
extern unsigned char v21 (unsigned int, signed int);
extern unsigned char (*v22) (unsigned int, signed int);
extern void v23 (unsigned short, signed char);
extern void (*v24) (unsigned short, signed char);
extern unsigned char v27 (unsigned char, unsigned char);
extern unsigned char (*v28) (unsigned char, unsigned char);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v74 = -2;
signed char v73 = -2;
signed int v72 = 1;

signed int v9 (signed short v75, signed char v76, unsigned int v77, unsigned char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -1;
signed short v80 = -1;
unsigned int v79 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v82, signed int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 2;
unsigned char v85 = 3;
unsigned int v84 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
signed int v89 = 2;
signed char v88 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v91, signed int v92, unsigned char v93, unsigned char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 3;
signed short v96 = 0;
signed char v95 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v98;
v98 = v15 ();
history[history_index++] = (int)v98;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
