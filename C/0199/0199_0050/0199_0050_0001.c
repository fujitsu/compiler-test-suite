#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
unsigned char v5 (unsigned char, signed short);
unsigned char (*v6) (unsigned char, signed short) = v5;
unsigned int v7 (signed int, signed short, unsigned short, signed char);
unsigned int (*v8) (signed int, signed short, unsigned short, signed char) = v7;
void v9 (signed short, signed short);
void (*v10) (signed short, signed short) = v9;
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned int v13 (signed short, unsigned char, signed int);
extern unsigned int (*v14) (signed short, unsigned char, signed int);
unsigned char v15 (unsigned short, unsigned int);
unsigned char (*v16) (unsigned short, unsigned int) = v15;
extern signed short v17 (signed short, unsigned int, unsigned int);
extern signed short (*v18) (signed short, unsigned int, unsigned int);
extern signed int v19 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v20) (unsigned int, signed short, unsigned char, signed short);
extern signed short v23 (signed short, unsigned char, signed short);
extern signed short (*v24) (signed short, unsigned char, signed short);
extern signed short v25 (unsigned char, signed short);
extern signed short (*v26) (unsigned char, signed short);
extern unsigned short v27 (signed int, unsigned char, unsigned char, signed char);
extern unsigned short (*v28) (signed int, unsigned char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v52 = 3U;
signed short v51 = -3;
signed char v50 = 3;

unsigned char v15 (unsigned short v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 2;
signed short v56 = -4;
signed int v55 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 1U;
unsigned char v61 = 6;
unsigned char v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v63, signed short v64, unsigned short v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 6;
signed int v68 = -3;
unsigned char v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v70, signed short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 2;
unsigned int v73 = 6U;
signed int v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
