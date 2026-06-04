#include <stdlib.h>
signed char v1 (signed short, signed char, signed char);
signed char (*v2) (signed short, signed char, signed char) = v1;
extern unsigned int v3 (unsigned short, signed char, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, unsigned int);
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned char v9 (signed int, signed char, signed short, signed short);
extern unsigned char (*v10) (signed int, signed char, signed short, signed short);
extern signed short v11 (signed short, signed int);
extern signed short (*v12) (signed short, signed int);
extern signed short v13 (signed int, signed int, unsigned short, signed short);
extern signed short (*v14) (signed int, signed int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned char, unsigned short, signed short);
signed int v19 (void);
signed int (*v20) (void) = v19;
unsigned short v21 (signed char, unsigned char);
unsigned short (*v22) (signed char, unsigned char) = v21;
extern unsigned int v23 (signed int, signed int, signed int);
extern unsigned int (*v24) (signed int, signed int, signed int);
unsigned char v25 (unsigned short, unsigned int);
unsigned char (*v26) (unsigned short, unsigned int) = v25;
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = 2;
signed int v51 = -4;
signed short v50 = -4;

unsigned char v25 (unsigned short v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 2;
unsigned short v56 = 5;
unsigned int v55 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v58, unsigned char v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 2;
unsigned char v61 = 5;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed short v65 = -3;
unsigned char v64 = 7;
signed char v63 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v66, signed char v67, signed char v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = 1;
unsigned char v70 = 2;
signed short v69 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v72;
signed int v73;
unsigned short v74;
signed short v75;
signed short v76;
v72 = -2 + -4;
v73 = -1 + 1;
v74 = 5 + 1;
v75 = v69 + v66;
v76 = v13 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return v68;
default: abort ();
}
}
}
}
