#include <stdlib.h>
unsigned char v3 (signed int);
unsigned char (*v4) (signed int) = v3;
extern signed char v5 (unsigned char, unsigned int);
extern signed char (*v6) (unsigned char, unsigned int);
extern signed char v7 (unsigned char, signed int);
extern signed char (*v8) (unsigned char, signed int);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern unsigned int v11 (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned short, unsigned char, unsigned int);
unsigned short v13 (signed int, signed int, unsigned short);
unsigned short (*v14) (signed int, signed int, unsigned short) = v13;
extern unsigned short v15 (signed short, signed short, unsigned short, signed char);
extern unsigned short (*v16) (signed short, signed short, unsigned short, signed char);
extern signed int v17 (unsigned int, signed char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned int, unsigned short);
signed char v19 (unsigned short, signed char, signed int, unsigned char);
signed char (*v20) (unsigned short, signed char, signed int, unsigned char) = v19;
unsigned int v21 (unsigned short);
unsigned int (*v22) (unsigned short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, unsigned int, signed char, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char, signed char);
unsigned char v27 (signed int, signed int, unsigned int);
unsigned char (*v28) (signed int, signed int, unsigned int) = v27;
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 0;
signed char v57 = 3;
signed short v56 = -4;

unsigned char v27 (signed int v59, signed int v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 1;
signed int v63 = -2;
signed int v62 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 1;
signed char v67 = -4;
unsigned short v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned short v69, signed char v70, signed int v71, unsigned char v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -2;
signed char v74 = 3;
unsigned char v73 = 5;
trace++;
switch (trace)
{
case 4: 
{
signed short v76;
v76 = v23 ();
history[history_index++] = (int)v76;
}
break;
case 6: 
return -3;
default: abort ();
}
}
}
}

unsigned short v13 (signed int v77, signed int v78, unsigned short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 2;
unsigned char v81 = 2;
unsigned short v80 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 7;
unsigned short v85 = 4;
signed int v84 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed short v87;
v87 = v23 ();
history[history_index++] = (int)v87;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}
