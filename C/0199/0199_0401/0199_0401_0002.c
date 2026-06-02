#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern unsigned int v3 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v4) (signed int, signed int, unsigned char, signed char);
signed char v7 (unsigned int, signed short, unsigned char, signed int);
signed char (*v8) (unsigned int, signed short, unsigned char, signed int) = v7;
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
signed short v11 (unsigned int, signed int);
signed short (*v12) (unsigned int, signed int) = v11;
unsigned short v15 (signed short, unsigned char);
unsigned short (*v16) (signed short, unsigned char) = v15;
extern signed short v17 (signed char, signed int, signed char, unsigned int);
extern signed short (*v18) (signed char, signed int, signed char, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
unsigned short v21 (unsigned char, unsigned int, signed short, unsigned char);
unsigned short (*v22) (unsigned char, unsigned int, signed short, unsigned char) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v61 = -3;
unsigned char v60 = 0;
signed short v59 = -1;

unsigned short v21 (unsigned char v62, unsigned int v63, signed short v64, unsigned char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 1U;
unsigned char v67 = 1;
signed short v66 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 4;
unsigned short v72 = 3;
unsigned char v71 = 1;
trace++;
switch (trace)
{
case 8: 
return v72;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v74, signed int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 1U;
signed short v77 = -4;
signed short v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v79, signed short v80, unsigned char v81, signed int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 0;
signed int v84 = 2;
signed int v83 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
