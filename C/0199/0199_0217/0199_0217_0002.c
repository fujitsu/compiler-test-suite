#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v5 (unsigned int, signed int, unsigned short, signed short);
extern unsigned int (*v6) (unsigned int, signed int, unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
signed short v9 (unsigned short, signed short);
signed short (*v10) (unsigned short, signed short) = v9;
void v11 (unsigned int, signed int);
void (*v12) (unsigned int, signed int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (signed short, signed short, signed char);
extern unsigned int (*v16) (signed short, signed short, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned int v19 (signed short, unsigned short);
unsigned int (*v20) (signed short, unsigned short) = v19;
extern unsigned short v21 (signed short, unsigned char, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char);
extern unsigned short v23 (unsigned short, unsigned char, signed int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned char, signed int, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v73 = 1;
signed char v72 = 3;
unsigned short v71 = 0;

void v29 (void)
{
{
for (;;) {
signed short v76 = 1;
unsigned short v75 = 4;
unsigned short v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed short v77, unsigned short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -3;
unsigned int v80 = 5U;
unsigned short v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v82, signed int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 2;
unsigned char v85 = 7;
signed char v84 = 3;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v87;
unsigned char v88;
signed int v89;
signed int v90;
unsigned short v91;
v87 = 0 - 2;
v88 = 4 + v85;
v89 = v86 - v86;
v90 = v83 + v83;
v91 = v23 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed short v9 (unsigned short v92, signed short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 1;
signed int v95 = -1;
signed char v94 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
