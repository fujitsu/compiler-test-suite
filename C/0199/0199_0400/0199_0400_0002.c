#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (unsigned int, unsigned int, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned int, signed short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned int v9 (unsigned short, unsigned int, signed char);
unsigned int (*v10) (unsigned short, unsigned int, signed char) = v9;
unsigned char v11 (unsigned short, unsigned short, unsigned short);
unsigned char (*v12) (unsigned short, unsigned short, unsigned short) = v11;
signed short v13 (signed short, unsigned short);
signed short (*v14) (signed short, unsigned short) = v13;
extern signed char v15 (unsigned char, signed char);
extern signed char (*v16) (unsigned char, signed char);
extern unsigned int v17 (signed short, signed int);
extern unsigned int (*v18) (signed short, signed int);
signed short v21 (signed char, signed char);
signed short (*v22) (signed char, signed char) = v21;
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
signed int v29 (signed short, signed char);
signed int (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 1U;
signed short v55 = 3;
signed char v54 = 2;

signed int v29 (signed short v57, signed char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = 1;
unsigned short v60 = 1;
unsigned int v59 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = -1;
unsigned char v64 = 2;
signed int v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed char v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 3;
signed int v69 = -1;
signed short v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = 3;
unsigned char v74 = 7;
unsigned int v73 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v76, unsigned short v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 0;
unsigned char v80 = 3;
signed int v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v82, unsigned int v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 4U;
signed char v86 = -1;
unsigned short v85 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
