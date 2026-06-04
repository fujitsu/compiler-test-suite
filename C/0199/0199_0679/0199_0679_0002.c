#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char);
extern signed char (*v2) (unsigned char, unsigned char);
extern unsigned char v3 (signed char, signed short, unsigned short);
extern unsigned char (*v4) (signed char, signed short, unsigned short);
extern unsigned char v5 (unsigned int, unsigned char, signed char, signed short);
extern unsigned char (*v6) (unsigned int, unsigned char, signed char, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned int v9 (signed char);
unsigned int (*v10) (signed char) = v9;
signed int v11 (signed short, signed char);
signed int (*v12) (signed short, signed char) = v11;
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
unsigned short v15 (unsigned short);
unsigned short (*v16) (unsigned short) = v15;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
void v25 (signed char, unsigned char, signed char, unsigned int);
void (*v26) (signed char, unsigned char, signed char, unsigned int) = v25;
extern signed int v27 (signed short, signed short, signed char, unsigned char);
extern signed int (*v28) (signed short, signed short, signed char, unsigned char);
unsigned char v29 (signed char, unsigned int, signed char, unsigned int);
unsigned char (*v30) (signed char, unsigned int, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = -3;
unsigned short v46 = 0;
signed char v45 = -1;

unsigned char v29 (signed char v48, unsigned int v49, signed char v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 4;
signed short v53 = 1;
signed short v52 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed char v55, unsigned char v56, signed char v57, unsigned int v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = -4;
signed char v60 = 3;
unsigned short v59 = 3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 6U;
unsigned char v64 = 7;
unsigned short v63 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 2;
unsigned char v69 = 2;
unsigned int v68 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 7;
unsigned short v73 = 5;
unsigned char v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
