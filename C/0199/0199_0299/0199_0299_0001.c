#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
extern void v5 (signed short, signed char);
extern void (*v6) (signed short, signed char);
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
extern signed short v11 (signed char, unsigned char);
extern signed short (*v12) (signed char, unsigned char);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
signed short v17 (unsigned short);
signed short (*v18) (unsigned short) = v17;
unsigned char v19 (unsigned int, signed char, unsigned short, unsigned short);
unsigned char (*v20) (unsigned int, signed char, unsigned short, unsigned short) = v19;
void v21 (signed int, unsigned int, signed int, unsigned int);
void (*v22) (signed int, unsigned int, signed int, unsigned int) = v21;
extern unsigned short v23 (signed int, unsigned short, unsigned short);
extern unsigned short (*v24) (signed int, unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, signed char, unsigned short, signed char);
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
unsigned char v29 (signed char, signed int, unsigned short);
unsigned char (*v30) (signed char, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = 0;
unsigned int v51 = 5U;
signed short v50 = 0;

unsigned char v29 (signed char v53, signed int v54, unsigned short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -1;
unsigned char v57 = 5;
unsigned short v56 = 6;
trace++;
switch (trace)
{
case 1: 
return v57;
case 4: 
return v57;
default: abort ();
}
}
}
}

void v21 (signed int v59, unsigned int v60, signed int v61, unsigned int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 3;
signed short v64 = -2;
unsigned char v63 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v66, signed char v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -3;
signed int v71 = -1;
signed char v70 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 4;
signed short v75 = -1;
signed char v74 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
