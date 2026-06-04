#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
signed char v5 (signed int);
signed char (*v6) (signed int) = v5;
unsigned char v7 (unsigned int, signed short);
unsigned char (*v8) (unsigned int, signed short) = v7;
extern signed char v9 (unsigned short, signed char);
extern signed char (*v10) (unsigned short, signed char);
void v11 (signed short, unsigned char);
void (*v12) (signed short, unsigned char) = v11;
extern unsigned short v13 (signed short, unsigned int, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned short, signed short);
unsigned short v15 (unsigned int, unsigned char, unsigned char);
unsigned short (*v16) (unsigned int, unsigned char, unsigned char) = v15;
extern signed int v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned int, signed char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
signed char v21 (signed short, unsigned short, unsigned char, signed int);
signed char (*v22) (signed short, unsigned short, unsigned char, signed int) = v21;
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned int v25 (signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed char, signed short, unsigned int);
extern unsigned int v29 (unsigned int, unsigned int);
extern unsigned int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v40 = 0;
unsigned int v39 = 7U;
signed char v38 = -1;

signed char v21 (signed short v41, unsigned short v42, unsigned char v43, signed int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 0;
signed short v46 = -2;
signed int v45 = 0;
trace++;
switch (trace)
{
case 8: 
return v47;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed char v50 = -4;
signed char v49 = 0;
signed int v48 = -4;
trace++;
switch (trace)
{
case 5: 
return 6;
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v51, unsigned char v52, unsigned char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 7U;
signed short v55 = -4;
signed char v54 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = -2;
signed short v60 = -3;
unsigned char v59 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v62, signed short v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 7;
signed char v65 = 1;
unsigned char v64 = 5;
trace++;
switch (trace)
{
case 1: 
return v66;
default: abort ();
}
}
}
}

signed char v5 (signed int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 4;
unsigned char v69 = 7;
signed char v68 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
