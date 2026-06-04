#include <stdlib.h>
signed int v1 (signed short, unsigned short, unsigned int);
signed int (*v2) (signed short, unsigned short, unsigned int) = v1;
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (unsigned short, signed short, unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed short, unsigned short, signed char);
extern signed int v13 (unsigned short, unsigned char);
extern signed int (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
unsigned char v17 (signed short, unsigned int, signed char, signed int);
unsigned char (*v18) (signed short, unsigned int, signed char, signed int) = v17;
extern unsigned int v23 (unsigned int, unsigned char, signed int, signed int);
extern unsigned int (*v24) (unsigned int, unsigned char, signed int, signed int);
signed char v25 (unsigned int, signed int, signed int, unsigned int);
signed char (*v26) (unsigned int, signed int, signed int, unsigned int) = v25;
extern unsigned int v27 (signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char);
extern void v29 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = 1;
unsigned char v52 = 3;
signed char v51 = -3;

signed char v25 (unsigned int v54, signed int v55, signed int v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 3;
unsigned char v59 = 3;
signed char v58 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v61, unsigned int v62, signed char v63, signed int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 6;
signed int v66 = 0;
signed short v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v68, unsigned short v69, unsigned int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -1;
signed short v72 = -1;
unsigned int v71 = 0U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v74;
unsigned short v75;
v74 = 5 - 7;
v75 = v15 (v74);
history[history_index++] = (int)v75;
}
break;
case 4: 
{
unsigned char v76;
unsigned short v77;
v76 = 3 - 2;
v77 = v15 (v76);
history[history_index++] = (int)v77;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
