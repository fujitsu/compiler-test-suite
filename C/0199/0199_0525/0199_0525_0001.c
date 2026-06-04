#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
void v3 (signed int, signed char, unsigned short);
void (*v4) (signed int, signed char, unsigned short) = v3;
extern unsigned short v5 (unsigned short, signed int, signed short, unsigned char);
extern unsigned short (*v6) (unsigned short, signed int, signed short, unsigned char);
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
void v9 (unsigned short, unsigned short, signed int, signed char);
void (*v10) (unsigned short, unsigned short, signed int, signed char) = v9;
extern signed int v11 (signed int, unsigned short, unsigned char, unsigned char);
extern signed int (*v12) (signed int, unsigned short, unsigned char, unsigned char);
signed short v13 (signed short, signed int);
signed short (*v14) (signed short, signed int) = v13;
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
signed short v19 (signed char);
signed short (*v20) (signed char) = v19;
extern void v21 (unsigned int, unsigned short, signed int, signed char);
extern void (*v22) (unsigned int, unsigned short, signed int, signed char);
unsigned char v23 (unsigned char, signed short, signed char);
unsigned char (*v24) (unsigned char, signed short, signed char) = v23;
extern signed int v25 (unsigned int, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed short, unsigned int);
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v62 = -3;
unsigned char v61 = 6;
signed int v60 = 2;

unsigned char v23 (unsigned char v63, signed short v64, signed char v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 7;
unsigned int v67 = 0U;
signed int v66 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -4;
signed char v71 = 1;
signed int v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v73, signed int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 4U;
unsigned int v76 = 5U;
unsigned short v75 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v78;
signed char v79;
v78 = 5 + 6;
v79 = 2 - 3;
v15 (v78, v79);
}
break;
case 3: 
return v73;
default: abort ();
}
}
}
}

void v9 (unsigned short v80, unsigned short v81, signed int v82, signed char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = 3;
signed int v85 = -1;
unsigned int v84 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v87, signed char v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -1;
unsigned char v91 = 4;
unsigned int v90 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
