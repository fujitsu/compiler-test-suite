#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
unsigned short v7 (unsigned int, signed short, signed char, signed char);
unsigned short (*v8) (unsigned int, signed short, signed char, signed char) = v7;
signed int v9 (unsigned short, signed int, unsigned int, signed char);
signed int (*v10) (unsigned short, signed int, unsigned int, signed char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
signed short v23 (unsigned short, signed int, signed short);
signed short (*v24) (unsigned short, signed int, signed short) = v23;
extern signed char v25 (unsigned char, signed char);
extern signed char (*v26) (unsigned char, signed char);
extern void v27 (signed int);
extern void (*v28) (signed int);
signed char v29 (signed int);
signed char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v49 = 1;
signed int v48 = -2;
unsigned int v47 = 5U;

signed char v29 (signed int v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 5;
signed int v52 = 0;
unsigned short v51 = 4;
trace++;
switch (trace)
{
case 1: 
return -2;
case 8: 
return -1;
default: abort ();
}
}
}
}

signed short v23 (unsigned short v54, signed int v55, signed short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 1;
signed char v58 = 1;
unsigned short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v60, signed int v61, unsigned int v62, signed char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 2;
signed short v65 = -4;
unsigned short v64 = 0;
trace++;
switch (trace)
{
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v67, signed short v68, signed char v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -4;
unsigned short v72 = 1;
signed char v71 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned char v76 = 4;
unsigned char v75 = 0;
signed short v74 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v77;
signed char v78;
v77 = -3 + -3;
v78 = v29 (v77);
history[history_index++] = (int)v78;
}
break;
case 2: 
{
signed int v79;
v79 = v15 ();
history[history_index++] = (int)v79;
}
break;
case 6: 
{
signed char v80;
signed int v81;
v80 = 2 + 3;
v81 = v19 (v80);
history[history_index++] = (int)v81;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
