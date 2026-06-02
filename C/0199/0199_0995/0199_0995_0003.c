#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned short, signed short);
extern void (*v2) (signed char, signed char, unsigned short, signed short);
unsigned int v5 (signed int, signed int, unsigned int, signed short);
unsigned int (*v6) (signed int, signed int, unsigned int, signed short) = v5;
unsigned int v7 (signed int, unsigned int, unsigned char);
unsigned int (*v8) (signed int, unsigned int, unsigned char) = v7;
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned char v15 (unsigned short, signed char, signed int);
unsigned char (*v16) (unsigned short, signed char, signed int) = v15;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned int, unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, unsigned int, signed int);
extern signed int v23 (signed char, unsigned int, signed int, signed short);
extern signed int (*v24) (signed char, unsigned int, signed int, signed short);
unsigned short v25 (unsigned int, unsigned int, unsigned char);
unsigned short (*v26) (unsigned int, unsigned int, unsigned char) = v25;
extern unsigned int v27 (unsigned int, signed int, signed int);
extern unsigned int (*v28) (unsigned int, signed int, signed int);
extern unsigned short v29 (unsigned int, unsigned short, signed char, signed int);
extern unsigned short (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v80 = 0;
unsigned short v79 = 4;
unsigned char v78 = 1;

unsigned short v25 (unsigned int v81, unsigned int v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 2;
signed short v85 = 1;
signed short v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v87, signed char v88, signed int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 7U;
signed char v91 = 2;
unsigned int v90 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v93, unsigned int v94, unsigned char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 4;
unsigned char v97 = 2;
unsigned char v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v99, signed int v100, unsigned int v101, signed short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 2;
unsigned short v104 = 4;
unsigned int v103 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
