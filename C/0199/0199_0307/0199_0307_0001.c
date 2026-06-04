#include <stdlib.h>
extern signed char v1 (signed short, unsigned char);
extern signed char (*v2) (signed short, unsigned char);
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
extern unsigned short v11 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned int v15 (unsigned char, signed short, signed char, signed int);
extern unsigned int (*v16) (unsigned char, signed short, signed char, signed int);
void v17 (unsigned char, unsigned int, unsigned int, unsigned short);
void (*v18) (unsigned char, unsigned int, unsigned int, unsigned short) = v17;
extern signed char v19 (unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed short);
signed char v21 (unsigned int, unsigned char);
signed char (*v22) (unsigned int, unsigned char) = v21;
signed int v23 (signed char, unsigned short);
signed int (*v24) (signed char, unsigned short) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
extern signed int v29 (signed int, signed char, signed short);
extern signed int (*v30) (signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v53 = 4;
signed int v52 = 1;
signed int v51 = 1;

signed int v23 (signed char v54, unsigned short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 4;
unsigned char v57 = 2;
signed short v56 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned int v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned int v62 = 5U;
unsigned int v61 = 0U;
trace++;
switch (trace)
{
case 3: 
{
signed int v64;
signed char v65;
signed short v66;
signed int v67;
v64 = 0 + 1;
v65 = -2 - 2;
v66 = 0 - 1;
v67 = v29 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 5: 
return 3;
default: abort ();
}
}
}
}

void v17 (unsigned char v68, unsigned int v69, unsigned int v70, unsigned short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 4U;
signed char v73 = -2;
unsigned short v72 = 7;
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

signed short v7 (unsigned short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = -1;
signed short v77 = 3;
signed int v76 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
