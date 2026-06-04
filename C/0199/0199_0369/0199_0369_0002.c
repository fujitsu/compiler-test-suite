#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char);
extern unsigned short (*v2) (signed int, unsigned char);
extern signed int v3 (unsigned char, unsigned int, signed char);
extern signed int (*v4) (unsigned char, unsigned int, signed char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
unsigned char v7 (signed int, unsigned short, signed char);
unsigned char (*v8) (signed int, unsigned short, signed char) = v7;
unsigned int v9 (unsigned int);
unsigned int (*v10) (unsigned int) = v9;
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern signed int v13 (signed int, unsigned char, signed short);
extern signed int (*v14) (signed int, unsigned char, signed short);
unsigned short v15 (unsigned short, signed int, signed short);
unsigned short (*v16) (unsigned short, signed int, signed short) = v15;
extern signed short v17 (unsigned char, signed short, unsigned int);
extern signed short (*v18) (unsigned char, signed short, unsigned int);
signed char v19 (unsigned int, signed short, unsigned int, unsigned int);
signed char (*v20) (unsigned int, signed short, unsigned int, unsigned int) = v19;
signed int v23 (unsigned short);
signed int (*v24) (unsigned short) = v23;
extern signed char v25 (unsigned char, signed int, signed char, signed int);
extern signed char (*v26) (unsigned char, signed int, signed char, signed int);
extern void v27 (signed int, unsigned char, signed char);
extern void (*v28) (signed int, unsigned char, signed char);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 2U;
unsigned char v49 = 2;
unsigned char v48 = 6;

signed int v23 (unsigned short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 7U;
signed short v53 = -3;
unsigned short v52 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v55, signed short v56, unsigned int v57, unsigned int v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = -4;
signed short v60 = 1;
unsigned char v59 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v62, signed int v63, signed short v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 3;
unsigned char v66 = 3;
unsigned char v65 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 0;
signed short v70 = -2;
unsigned int v69 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v72, unsigned short v73, signed char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 4;
unsigned short v76 = 0;
signed short v75 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
