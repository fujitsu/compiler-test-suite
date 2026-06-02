#include <stdlib.h>
unsigned short v1 (signed int, signed char, signed short, signed char);
unsigned short (*v2) (signed int, signed char, signed short, signed char) = v1;
unsigned short v3 (unsigned int, unsigned short, signed char);
unsigned short (*v4) (unsigned int, unsigned short, signed char) = v3;
extern signed int v5 (unsigned char, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char);
signed int v7 (unsigned short);
signed int (*v8) (unsigned short) = v7;
signed short v9 (void);
signed short (*v10) (void) = v9;
signed char v11 (unsigned short, unsigned char, signed int);
signed char (*v12) (unsigned short, unsigned char, signed int) = v11;
void v13 (unsigned short, unsigned char);
void (*v14) (unsigned short, unsigned char) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short);
extern unsigned char v19 (signed char, signed int, unsigned char, signed char);
extern unsigned char (*v20) (signed char, signed int, unsigned char, signed char);
extern signed char v23 (signed short, unsigned int, signed short);
extern signed char (*v24) (signed short, unsigned int, signed short);
extern signed short v25 (signed short, unsigned short, signed short);
extern signed short (*v26) (signed short, unsigned short, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed short v29 (unsigned int, signed short, unsigned int);
extern signed short (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = -3;
signed int v80 = -4;
unsigned int v79 = 4U;

void v13 (unsigned short v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 0;
unsigned char v85 = 2;
unsigned char v84 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v87, unsigned char v88, signed int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 2;
unsigned char v91 = 2;
unsigned short v90 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed char v95 = -1;
signed int v94 = 0;
signed short v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 7;
unsigned int v98 = 0U;
signed int v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v100, unsigned short v101, signed char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 6;
signed short v104 = -4;
signed char v103 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v106, signed char v107, signed short v108, signed char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 1;
unsigned char v111 = 2;
unsigned int v110 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v113;
v113 = v15 ();
history[history_index++] = (int)v113;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
