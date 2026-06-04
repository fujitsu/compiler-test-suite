#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char);
extern signed short (*v2) (unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern signed char v13 (signed char, unsigned int);
extern signed char (*v14) (signed char, unsigned int);
extern unsigned char v15 (unsigned short, signed char, signed short);
extern unsigned char (*v16) (unsigned short, signed char, signed short);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned int v19 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned short, unsigned int, unsigned char);
signed short v21 (unsigned char, unsigned char);
signed short (*v22) (unsigned char, unsigned char) = v21;
extern void v23 (unsigned char, signed short, signed int, signed short);
extern void (*v24) (unsigned char, signed short, signed int, signed short);
void v25 (unsigned char, signed char);
void (*v26) (unsigned char, signed char) = v25;
extern signed int v27 (unsigned int, unsigned char, signed int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned char, signed int, unsigned int);
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = -4;
unsigned short v75 = 6;
signed char v74 = 3;

void v25 (unsigned char v77, signed char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 2;
signed int v80 = -4;
unsigned int v79 = 7U;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v82;
unsigned char v83;
signed int v84;
unsigned int v85;
signed int v86;
v82 = 2U - 3U;
v83 = 1 + 1;
v84 = v80 - v80;
v85 = v79 + 2U;
v86 = v27 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v21 (unsigned char v87, unsigned char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -4;
signed short v90 = -1;
signed int v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed char v94 = 0;
signed char v93 = 3;
unsigned char v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed char v97 = 2;
signed int v96 = -4;
signed int v95 = -4;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}
