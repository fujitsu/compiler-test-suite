#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed int, signed int);
extern unsigned char v5 (signed int, unsigned short, signed int);
extern unsigned char (*v6) (signed int, unsigned short, signed int);
signed char v7 (unsigned char, signed char);
signed char (*v8) (unsigned char, signed char) = v7;
void v11 (signed int);
void (*v12) (signed int) = v11;
signed short v13 (unsigned int);
signed short (*v14) (unsigned int) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (signed int, unsigned int, signed char);
extern void (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (signed int, unsigned int);
extern signed short (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
signed int v25 (unsigned char, unsigned char, signed char);
signed int (*v26) (unsigned char, unsigned char, signed char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed short v29 (signed char, signed char, unsigned int);
extern signed short (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 6;
signed int v57 = -4;
signed char v56 = -3;

signed int v25 (unsigned char v59, unsigned char v60, signed char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 6;
unsigned int v63 = 6U;
unsigned int v62 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 3;
signed short v67 = 3;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 3;
signed int v71 = 1;
signed short v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v73, signed char v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 1;
unsigned int v76 = 3U;
unsigned short v75 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v78;
signed char v79;
v78 = v73 - v73;
v79 = v23 (v78);
history[history_index++] = (int)v79;
}
break;
case 3: 
return v74;
default: abort ();
}
}
}
}
