#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, signed char, signed short);
extern signed short (*v2) (signed int, unsigned int, signed char, signed short);
signed int v3 (signed short);
signed int (*v4) (signed short) = v3;
extern signed int v5 (signed char, unsigned int, signed int);
extern signed int (*v6) (signed char, unsigned int, signed int);
extern unsigned short v9 (unsigned char, signed char, unsigned short);
extern unsigned short (*v10) (unsigned char, signed char, unsigned short);
extern unsigned short v11 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern void v17 (unsigned short, unsigned short, unsigned int);
extern void (*v18) (unsigned short, unsigned short, unsigned int);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
unsigned char v21 (unsigned char, unsigned short, unsigned short);
unsigned char (*v22) (unsigned char, unsigned short, unsigned short) = v21;
extern signed char v23 (signed char, signed int, unsigned int, unsigned int);
extern signed char (*v24) (signed char, signed int, unsigned int, unsigned int);
void v25 (unsigned char, signed char, signed int, unsigned short);
void (*v26) (unsigned char, signed char, signed int, unsigned short) = v25;
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed char v29 (signed char, unsigned short, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v56 = 5;
signed char v55 = -2;
unsigned char v54 = 4;

signed short v27 (void)
{
{
for (;;) {
unsigned short v59 = 5;
signed int v58 = -2;
signed char v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v60, signed char v61, signed int v62, unsigned short v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 0;
unsigned short v65 = 5;
unsigned short v64 = 0;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 3U;
signed int v71 = 2;
unsigned int v70 = 6U;
trace++;
switch (trace)
{
case 1: 
return 5;
case 11: 
return v67;
default: abort ();
}
}
}
}

signed char v19 (unsigned char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -2;
unsigned char v75 = 6;
signed int v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 2;
unsigned int v79 = 0U;
signed char v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
