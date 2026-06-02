#include <stdlib.h>
extern signed char v3 (unsigned short, signed int, unsigned char);
extern signed char (*v4) (unsigned short, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v8) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v9 (signed short, signed char, unsigned char);
extern unsigned char (*v10) (signed short, signed char, unsigned char);
unsigned short v11 (signed short, signed short);
unsigned short (*v12) (signed short, signed short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
signed short v19 (signed short, unsigned short, signed short, unsigned short);
signed short (*v20) (signed short, unsigned short, signed short, unsigned short) = v19;
unsigned char v21 (signed char);
unsigned char (*v22) (signed char) = v21;
unsigned short v23 (signed int, unsigned char, signed short, signed char);
unsigned short (*v24) (signed int, unsigned char, signed short, signed char) = v23;
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern signed short v27 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v28) (unsigned short, unsigned int, unsigned int, signed char);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = -3;
unsigned short v61 = 5;
unsigned int v60 = 4U;

unsigned short v23 (signed int v63, unsigned char v64, signed short v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 5;
unsigned short v68 = 2;
signed short v67 = -4;
trace++;
switch (trace)
{
case 4: 
return v69;
case 8: 
return v69;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v21 (signed char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 2;
signed short v72 = 0;
unsigned short v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v74, unsigned short v75, signed short v76, unsigned short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -2;
unsigned int v79 = 4U;
unsigned short v78 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned short v83 = 7;
signed short v82 = 0;
signed short v81 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v84, signed short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 4;
unsigned char v87 = 0;
unsigned int v86 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
