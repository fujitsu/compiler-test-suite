#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
unsigned char v5 (unsigned char, unsigned char);
unsigned char (*v6) (unsigned char, unsigned char) = v5;
unsigned short v7 (signed int, signed int);
unsigned short (*v8) (signed int, signed int) = v7;
extern signed char v9 (unsigned char, signed int, unsigned char);
extern signed char (*v10) (unsigned char, signed int, unsigned char);
signed char v11 (signed short, unsigned short, unsigned short, signed char);
signed char (*v12) (signed short, unsigned short, unsigned short, signed char) = v11;
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
unsigned char v17 (signed short, unsigned char, signed int, signed char);
unsigned char (*v18) (signed short, unsigned char, signed int, signed char) = v17;
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern unsigned int v23 (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v24) (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern signed short v27 (unsigned char, signed char, signed char, unsigned short);
extern signed short (*v28) (unsigned char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v60 = 3;
signed short v59 = 1;
unsigned short v58 = 2;

unsigned char v17 (signed short v61, unsigned char v62, signed int v63, signed char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -1;
signed int v66 = 3;
signed char v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v68, unsigned short v69, unsigned short v70, signed char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -1;
unsigned char v73 = 6;
signed char v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 3U;
unsigned int v78 = 5U;
signed short v77 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v80, unsigned char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -2;
signed int v83 = -1;
unsigned int v82 = 0U;
trace++;
switch (trace)
{
case 5: 
return v81;
default: abort ();
}
}
}
}
