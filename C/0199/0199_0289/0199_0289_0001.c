#include <stdlib.h>
unsigned int v1 (signed char);
unsigned int (*v2) (signed char) = v1;
extern unsigned short v3 (signed short, signed short, unsigned char, signed short);
extern unsigned short (*v4) (signed short, signed short, unsigned char, signed short);
unsigned short v5 (unsigned char, unsigned int, unsigned int, unsigned short);
unsigned short (*v6) (unsigned char, unsigned int, unsigned int, unsigned short) = v5;
void v7 (unsigned short, unsigned short);
void (*v8) (unsigned short, unsigned short) = v7;
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned int v15 (unsigned int, signed short, signed char, unsigned int);
unsigned int (*v16) (unsigned int, signed short, signed char, unsigned int) = v15;
extern unsigned short v17 (signed char, signed char, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed int, signed char, signed int, unsigned short);
extern unsigned short v23 (signed short, signed int, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (unsigned char, signed int, unsigned short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned short v29 (signed int, unsigned char);
extern unsigned short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = -4;
signed short v49 = 2;
signed int v48 = 3;

unsigned int v15 (unsigned int v51, signed short v52, signed char v53, unsigned int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -3;
unsigned int v56 = 7U;
unsigned short v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v58, unsigned short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 0U;
unsigned char v61 = 1;
unsigned short v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v63, unsigned int v64, unsigned int v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -2;
signed short v68 = 1;
signed short v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 0;
unsigned short v72 = 4;
signed short v71 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v74;
signed short v75;
unsigned char v76;
v74 = 0 + -2;
v75 = -1 - v71;
v76 = v9 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
