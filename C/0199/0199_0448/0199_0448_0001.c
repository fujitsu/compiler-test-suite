#include <stdlib.h>
unsigned int v3 (signed int, unsigned int, unsigned int, unsigned int);
unsigned int (*v4) (signed int, unsigned int, unsigned int, unsigned int) = v3;
extern unsigned char v5 (unsigned char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed int, unsigned int);
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
extern signed int v11 (signed int, unsigned int, signed int, unsigned short);
extern signed int (*v12) (signed int, unsigned int, signed int, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned int v15 (unsigned short, signed int);
unsigned int (*v16) (unsigned short, signed int) = v15;
extern void v17 (signed short, signed char, unsigned short, unsigned int);
extern void (*v18) (signed short, signed char, unsigned short, unsigned int);
signed short v19 (unsigned char, signed int, unsigned short);
signed short (*v20) (unsigned char, signed int, unsigned short) = v19;
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
void v23 (signed short, unsigned short, signed int);
void (*v24) (signed short, unsigned short, signed int) = v23;
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed char v29 (unsigned int, unsigned short, signed char, signed int);
signed char (*v30) (unsigned int, unsigned short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = -1;
signed char v57 = 2;
signed int v56 = -4;

signed char v29 (unsigned int v59, unsigned short v60, signed char v61, signed int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 0;
signed int v64 = -1;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v66, unsigned short v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 3;
unsigned int v70 = 4U;
unsigned char v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v72, signed int v73, unsigned short v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 3;
signed short v76 = 0;
unsigned char v75 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v78, signed int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 3;
signed char v81 = 1;
signed short v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v83, unsigned int v84, unsigned int v85, unsigned int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 3;
signed short v88 = -3;
signed char v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
