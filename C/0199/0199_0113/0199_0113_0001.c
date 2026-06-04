#include <stdlib.h>
signed char v1 (unsigned char, unsigned short, signed int, signed int);
signed char (*v2) (unsigned char, unsigned short, signed int, signed int) = v1;
signed int v3 (signed int, unsigned int, signed int, unsigned int);
signed int (*v4) (signed int, unsigned int, signed int, unsigned int) = v3;
extern void v5 (unsigned short, signed int, unsigned char);
extern void (*v6) (unsigned short, signed int, unsigned char);
extern void v7 (signed int, signed short, unsigned short, unsigned int);
extern void (*v8) (signed int, signed short, unsigned short, unsigned int);
extern signed int v9 (signed int, unsigned char, unsigned char, unsigned char);
extern signed int (*v10) (signed int, unsigned char, unsigned char, unsigned char);
unsigned int v11 (unsigned int, signed int);
unsigned int (*v12) (unsigned int, signed int) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short, unsigned short);
extern void (*v16) (signed short, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned int);
unsigned int v21 (unsigned char, signed int, signed char, unsigned int);
unsigned int (*v22) (unsigned char, signed int, signed char, unsigned int) = v21;
extern unsigned int v23 (unsigned short, signed short, signed char, unsigned char);
extern unsigned int (*v24) (unsigned short, signed short, signed char, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned short, signed int, unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, signed int, unsigned short, unsigned char);
extern unsigned int v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v51 = 7;
signed int v50 = 0;
unsigned char v49 = 4;

unsigned int v21 (unsigned char v52, signed int v53, signed char v54, unsigned int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 5U;
signed char v57 = 3;
signed int v56 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v59, signed int v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 2;
unsigned char v62 = 1;
unsigned short v61 = 0;
trace++;
switch (trace)
{
case 2: 
return v59;
default: abort ();
}
}
}
}

signed int v3 (signed int v64, unsigned int v65, signed int v66, unsigned int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -4;
unsigned int v69 = 4U;
signed short v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v71, unsigned short v72, signed int v73, signed int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -1;
unsigned short v76 = 3;
unsigned short v75 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed int v78;
unsigned char v79;
unsigned char v80;
unsigned char v81;
signed int v82;
v78 = v74 - 0;
v79 = v71 - v71;
v80 = v71 - v71;
v81 = 2 + v71;
v82 = v9 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
