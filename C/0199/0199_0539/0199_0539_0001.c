#include <stdlib.h>
signed short v1 (unsigned char, unsigned int);
signed short (*v2) (unsigned char, unsigned int) = v1;
signed short v3 (unsigned short, signed char);
signed short (*v4) (unsigned short, signed char) = v3;
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed char v9 (signed int);
signed char (*v10) (signed int) = v9;
extern unsigned short v11 (unsigned int, signed short, signed int);
extern unsigned short (*v12) (unsigned int, signed short, signed int);
extern unsigned short v13 (signed char, unsigned char, unsigned short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed short, unsigned int, signed short);
extern unsigned short (*v18) (signed short, unsigned int, signed short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned short v23 (signed char, unsigned int, signed int, unsigned int);
unsigned short (*v24) (signed char, unsigned int, signed int, unsigned int) = v23;
extern void v25 (signed short, signed char, unsigned char);
extern void (*v26) (signed short, signed char, unsigned char);
extern unsigned short v27 (signed char, signed char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed char, signed char, unsigned char, unsigned char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v45 = 2;
signed char v44 = -4;
signed short v43 = -4;

unsigned short v23 (signed char v46, unsigned int v47, signed int v48, unsigned int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 0;
signed short v51 = -4;
unsigned char v50 = 4;
trace++;
switch (trace)
{
case 6: 
return 7;
case 8: 
{
signed short v53;
signed char v54;
unsigned char v55;
v53 = v51 - v51;
v54 = -1 + v46;
v55 = v50 - v50;
v25 (v53, v54, v55);
}
break;
case 10: 
{
signed char v56;
signed char v57;
unsigned char v58;
unsigned char v59;
unsigned short v60;
v56 = v46 + v46;
v57 = 0 + v46;
v58 = v50 + v50;
v59 = v50 - v50;
v60 = v27 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return v52;
default: abort ();
}
}
}
}

signed char v9 (signed int v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 3;
signed short v63 = -1;
unsigned char v62 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 1;
unsigned char v68 = 3;
signed char v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v70, unsigned int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 6;
unsigned int v73 = 7U;
signed short v72 = -4;
trace++;
switch (trace)
{
case 0: 
return 1;
case 1: 
{
unsigned char v75;
v75 = v15 ();
history[history_index++] = (int)v75;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}
