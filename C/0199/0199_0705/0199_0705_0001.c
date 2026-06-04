#include <stdlib.h>
extern unsigned int v3 (unsigned char, unsigned int, signed short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed short);
extern void v7 (signed int, unsigned short);
extern void (*v8) (signed int, unsigned short);
unsigned int v9 (unsigned int);
unsigned int (*v10) (unsigned int) = v9;
extern unsigned short v11 (unsigned short, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short);
extern signed int v13 (signed int, signed int, signed short, unsigned short);
extern signed int (*v14) (signed int, signed int, signed short, unsigned short);
extern signed int v15 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v16) (unsigned int, unsigned char, signed short, unsigned char);
extern void v17 (signed short, unsigned int, unsigned int, signed char);
extern void (*v18) (signed short, unsigned int, unsigned int, signed char);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed short v21 (signed char, unsigned int, signed int, unsigned char);
extern signed short (*v22) (signed char, unsigned int, signed int, unsigned char);
extern signed int v23 (signed char, signed int, unsigned int);
extern signed int (*v24) (signed char, signed int, unsigned int);
void v25 (unsigned short, unsigned char);
void (*v26) (unsigned short, unsigned char) = v25;
signed int v27 (signed short, signed short, unsigned int, signed char);
signed int (*v28) (signed short, signed short, unsigned int, signed char) = v27;
extern unsigned short v29 (unsigned int, unsigned int, signed char);
extern unsigned short (*v30) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = -3;
unsigned short v61 = 0;
signed int v60 = 0;

signed int v27 (signed short v63, signed short v64, unsigned int v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 4;
signed char v68 = 2;
signed short v67 = -1;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

void v25 (unsigned short v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 5;
signed short v73 = 3;
unsigned int v72 = 5U;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 1;
signed int v77 = 2;
signed char v76 = 1;
trace++;
switch (trace)
{
case 1: 
return v75;
case 3: 
return v75;
default: abort ();
}
}
}
}
