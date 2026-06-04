#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned short, unsigned int);
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern unsigned char v5 (signed char, signed int, signed int, signed char);
extern unsigned char (*v6) (signed char, signed int, signed int, signed char);
extern unsigned short v7 (signed int, unsigned char, signed char, signed int);
extern unsigned short (*v8) (signed int, unsigned char, signed char, signed int);
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned char v13 (signed char, unsigned short);
extern unsigned char (*v14) (signed char, unsigned short);
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
void v17 (unsigned short, signed char, unsigned int);
void (*v18) (unsigned short, signed char, unsigned int) = v17;
unsigned char v19 (signed short, signed short);
unsigned char (*v20) (signed short, signed short) = v19;
extern signed short v21 (unsigned char, unsigned char, signed char);
extern signed short (*v22) (unsigned char, unsigned char, signed char);
void v23 (unsigned int);
void (*v24) (unsigned int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
void v27 (signed int, signed char);
void (*v28) (signed int, signed char) = v27;
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 1U;
unsigned short v75 = 2;
signed int v74 = 3;

void v27 (signed int v77, signed char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -4;
unsigned short v80 = 0;
unsigned char v79 = 1;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

void v23 (unsigned int v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -3;
unsigned short v84 = 3;
signed int v83 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v86, signed short v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 2;
unsigned short v89 = 6;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v91, signed char v92, unsigned int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -2;
unsigned short v95 = 0;
signed char v94 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v97;
v97 = v25 ();
history[history_index++] = (int)v97;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
