#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (signed short, unsigned char, signed char);
extern unsigned int (*v4) (signed short, unsigned char, signed char);
signed int v5 (void);
signed int (*v6) (void) = v5;
unsigned char v7 (unsigned char, unsigned int, unsigned short, signed char);
unsigned char (*v8) (unsigned char, unsigned int, unsigned short, signed char) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned int v11 (signed char, unsigned short, unsigned char);
unsigned int (*v12) (signed char, unsigned short, unsigned char) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed int, unsigned int);
extern signed char (*v24) (signed int, unsigned int);
signed char v25 (unsigned int, unsigned int, unsigned int, unsigned int);
signed char (*v26) (unsigned int, unsigned int, unsigned int, unsigned int) = v25;
extern signed short v27 (signed int, unsigned short, signed char, unsigned char);
extern signed short (*v28) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 3;
signed int v70 = -4;
signed char v69 = -1;

signed char v25 (unsigned int v72, unsigned int v73, unsigned int v74, unsigned int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 5;
signed char v77 = -4;
signed short v76 = 2;
trace++;
switch (trace)
{
case 2: 
return v77;
case 9: 
return v77;
case 11: 
return v77;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned short v81 = 2;
signed short v80 = -3;
signed short v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v82, unsigned short v83, unsigned char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 3U;
signed char v86 = 2;
signed char v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v88, unsigned int v89, unsigned short v90, signed char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
unsigned int v93 = 0U;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned short v97 = 4;
signed short v96 = 1;
unsigned char v95 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
