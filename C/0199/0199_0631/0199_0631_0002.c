#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
void v3 (unsigned int, signed char);
void (*v4) (unsigned int, signed char) = v3;
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern void v7 (unsigned short, signed short, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int);
unsigned int v9 (signed int, signed char, unsigned char);
unsigned int (*v10) (signed int, signed char, unsigned char) = v9;
extern void v11 (signed char, unsigned short, signed char, unsigned int);
extern void (*v12) (signed char, unsigned short, signed char, unsigned int);
extern unsigned int v13 (signed int, signed char, signed char);
extern unsigned int (*v14) (signed int, signed char, signed char);
void v15 (signed int, signed int);
void (*v16) (signed int, signed int) = v15;
extern signed int v17 (unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (unsigned char, unsigned char, unsigned int);
extern unsigned int v19 (unsigned int, unsigned short, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short);
extern signed short v21 (unsigned int, unsigned short, unsigned int, signed short);
extern signed short (*v22) (unsigned int, unsigned short, unsigned int, signed short);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
signed int v25 (unsigned int);
signed int (*v26) (unsigned int) = v25;
extern unsigned short v27 (unsigned int, signed int, signed short);
extern unsigned short (*v28) (unsigned int, signed int, signed short);
extern unsigned char v29 (signed char, signed short, unsigned char);
extern unsigned char (*v30) (signed char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v73 = 7;
signed int v72 = 2;
signed int v71 = 0;

signed int v25 (unsigned int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 0;
unsigned short v76 = 2;
signed short v75 = 2;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed int v23 (signed char v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -3;
signed short v80 = 0;
signed short v79 = -4;
trace++;
switch (trace)
{
case 8: 
return 0;
case 10: 
return 3;
default: abort ();
}
}
}
}

void v15 (signed int v82, signed int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 1;
signed char v85 = -4;
signed int v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v87, signed char v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 5;
signed int v91 = -3;
signed char v90 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 3;
signed char v96 = 2;
signed short v95 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
