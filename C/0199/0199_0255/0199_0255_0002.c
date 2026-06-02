#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
unsigned char v3 (signed char, signed int);
unsigned char (*v4) (signed char, signed int) = v3;
extern void v5 (void);
extern void (*v6) (void);
void v7 (unsigned char);
void (*v8) (unsigned char) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, unsigned short, signed short);
extern void v15 (signed short, unsigned short, signed short);
extern void (*v16) (signed short, unsigned short, signed short);
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned char v19 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int v21 (signed char, unsigned short, signed char, signed char);
extern unsigned int (*v22) (signed char, unsigned short, signed char, signed char);
void v23 (signed short, signed int, unsigned char);
void (*v24) (signed short, signed int, unsigned char) = v23;
signed char v25 (signed char, unsigned int, unsigned int, signed int);
signed char (*v26) (signed char, unsigned int, unsigned int, signed int) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (unsigned short, signed short, signed char, signed short);
extern unsigned short (*v30) (unsigned short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = 2;
unsigned char v78 = 0;
unsigned short v77 = 2;

signed char v25 (signed char v80, unsigned int v81, unsigned int v82, signed int v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -1;
unsigned int v85 = 0U;
unsigned short v84 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v87, signed int v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 3U;
signed int v91 = -1;
unsigned short v90 = 3;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

void v7 (unsigned char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 3;
signed short v95 = -1;
signed char v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 7;
unsigned short v100 = 6;
unsigned short v99 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
