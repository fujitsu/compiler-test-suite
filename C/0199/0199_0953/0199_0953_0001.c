#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
signed short v5 (signed short, unsigned char, unsigned char);
signed short (*v6) (signed short, unsigned char, unsigned char) = v5;
unsigned char v7 (unsigned char, unsigned int, signed int, unsigned int);
unsigned char (*v8) (unsigned char, unsigned int, signed int, unsigned int) = v7;
extern signed char v9 (unsigned char, unsigned int, signed short);
extern signed char (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, signed short);
void v13 (unsigned short, signed short);
void (*v14) (unsigned short, signed short) = v13;
extern unsigned int v15 (signed short, unsigned short);
extern unsigned int (*v16) (signed short, unsigned short);
extern unsigned int v17 (signed int, signed short);
extern unsigned int (*v18) (signed int, signed short);
extern unsigned char v19 (signed char, unsigned char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char, unsigned char);
signed int v21 (signed int, signed short);
signed int (*v22) (signed int, signed short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (unsigned char, unsigned short);
extern void (*v26) (unsigned char, unsigned short);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern void v29 (unsigned int, unsigned char, unsigned short, signed int);
extern void (*v30) (unsigned int, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = -1;
signed char v53 = -4;
signed char v52 = 3;

signed int v21 (signed int v55, signed short v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 0;
unsigned short v58 = 4;
signed char v57 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v60, signed short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 3;
signed int v63 = 0;
signed int v62 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v65, unsigned int v66, signed int v67, unsigned int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 5;
signed char v70 = 1;
signed char v69 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v72, unsigned char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 2;
signed char v76 = -4;
signed short v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
