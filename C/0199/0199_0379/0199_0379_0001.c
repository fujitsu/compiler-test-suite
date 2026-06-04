#include <stdlib.h>
unsigned char v1 (unsigned short, signed int, signed short, unsigned char);
unsigned char (*v2) (unsigned short, signed int, signed short, unsigned char) = v1;
unsigned char v3 (signed int, unsigned short);
unsigned char (*v4) (signed int, unsigned short) = v3;
unsigned int v5 (unsigned int, signed int);
unsigned int (*v6) (unsigned int, signed int) = v5;
extern signed char v7 (unsigned short, signed char, unsigned char, unsigned int);
extern signed char (*v8) (unsigned short, signed char, unsigned char, unsigned int);
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
extern void v11 (signed int, unsigned char, signed int);
extern void (*v12) (signed int, unsigned char, signed int);
extern signed int v13 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
extern signed char v19 (signed int, signed short, unsigned char, unsigned short);
extern signed char (*v20) (signed int, signed short, unsigned char, unsigned short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, signed char, unsigned short, unsigned short);
extern signed int (*v26) (signed int, signed char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned short, unsigned char);
extern unsigned char (*v28) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = 1;
signed int v49 = -4;
unsigned short v48 = 2;

unsigned short v21 (void)
{
{
for (;;) {
unsigned char v53 = 5;
unsigned int v52 = 7U;
signed int v51 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v54, signed int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 1;
signed short v57 = -2;
unsigned short v56 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v59, unsigned short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 3;
unsigned int v62 = 7U;
unsigned short v61 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v64, signed int v65, signed short v66, unsigned char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = 2;
signed int v69 = 3;
unsigned char v68 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v71;
unsigned char v72;
signed int v73;
v71 = -2 - 2;
v72 = v68 + 0;
v73 = -1 + v69;
v11 (v71, v72, v73);
}
break;
case 12: 
return v68;
default: abort ();
}
}
}
}
