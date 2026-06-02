#include <stdlib.h>
extern void v1 (signed short, signed short, unsigned short, unsigned int);
extern void (*v2) (signed short, signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed int v7 (unsigned int, signed short, signed short, signed short);
extern signed int (*v8) (unsigned int, signed short, signed short, signed short);
extern signed char v9 (signed short, signed char, unsigned char);
extern signed char (*v10) (signed short, signed char, unsigned char);
void v11 (signed short);
void (*v12) (signed short) = v11;
extern unsigned char v13 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v14) (unsigned int, unsigned int, unsigned char);
extern unsigned char v15 (unsigned char, unsigned int);
extern unsigned char (*v16) (unsigned char, unsigned int);
signed char v17 (signed int, signed char);
signed char (*v18) (signed int, signed char) = v17;
extern unsigned int v19 (unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, signed short);
extern unsigned char v21 (unsigned int, unsigned int, signed short);
extern unsigned char (*v22) (unsigned int, unsigned int, signed short);
void v23 (unsigned char, signed int);
void (*v24) (unsigned char, signed int) = v23;
signed int v25 (unsigned short);
signed int (*v26) (unsigned short) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short, signed char);
extern void (*v30) (unsigned int, signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 3;
signed char v48 = -4;
unsigned short v47 = 3;

signed int v25 (unsigned short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 6;
signed int v52 = -2;
unsigned int v51 = 5U;
trace++;
switch (trace)
{
case 6: 
return v52;
default: abort ();
}
}
}
}

void v23 (unsigned char v54, signed int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 0;
signed short v57 = 0;
signed int v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v59, signed char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned int v62 = 3U;
signed int v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = 0;
unsigned short v66 = 5;
signed short v65 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed int v70 = 0;
unsigned short v69 = 6;
signed short v68 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
