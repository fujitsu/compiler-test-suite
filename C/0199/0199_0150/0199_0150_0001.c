#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern signed int v3 (signed short, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed short);
extern unsigned int v5 (signed int, signed char);
extern unsigned int (*v6) (signed int, signed char);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
unsigned char v11 (unsigned int, signed short, signed int, signed int);
unsigned char (*v12) (unsigned int, signed short, signed int, signed int) = v11;
void v13 (unsigned short, signed char);
void (*v14) (unsigned short, signed char) = v13;
unsigned char v15 (unsigned int, unsigned int, signed short);
unsigned char (*v16) (unsigned int, unsigned int, signed short) = v15;
extern void v17 (unsigned char, signed int, signed short);
extern void (*v18) (unsigned char, signed int, signed short);
unsigned short v19 (unsigned short);
unsigned short (*v20) (unsigned short) = v19;
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
unsigned short v23 (signed int, unsigned char, signed int, unsigned int);
unsigned short (*v24) (signed int, unsigned char, signed int, unsigned int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed short, signed char, signed int, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int, signed int);
signed char v29 (signed char, unsigned short, unsigned short);
signed char (*v30) (signed char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v52 = 0;
unsigned int v51 = 0U;
unsigned char v50 = 0;

signed char v29 (signed char v53, unsigned short v54, unsigned short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 7U;
signed short v57 = 1;
unsigned char v56 = 4;
trace++;
switch (trace)
{
case 7: 
return 3;
case 9: 
return 2;
default: abort ();
}
}
}
}

unsigned short v23 (signed int v59, unsigned char v60, signed int v61, unsigned int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 6;
unsigned char v64 = 1;
signed int v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 1;
signed short v68 = -2;
signed char v67 = -2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v70;
v70 = v25 ();
history[history_index++] = (int)v70;
}
break;
case 5: 
{
unsigned char v71;
unsigned short v72;
unsigned int v73;
v71 = 1 + 3;
v72 = v66 - v69;
v73 = v21 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 11: 
return v69;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v74, unsigned int v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -2;
signed char v78 = -4;
unsigned int v77 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v80, signed char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 3;
signed int v83 = 0;
signed short v82 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v85, signed short v86, signed int v87, signed int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 6;
signed short v90 = -2;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
