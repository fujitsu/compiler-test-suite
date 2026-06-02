#include <stdlib.h>
unsigned char v1 (signed char);
unsigned char (*v2) (signed char) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
signed int v5 (signed char, unsigned char, signed char);
signed int (*v6) (signed char, unsigned char, signed char) = v5;
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
extern signed short v11 (unsigned char, unsigned int, signed char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned int, signed char, unsigned char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
void v15 (unsigned char, signed short, unsigned char, unsigned char);
void (*v16) (unsigned char, signed short, unsigned char, unsigned char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, signed int, signed char, signed int);
extern signed short (*v20) (signed short, signed int, signed char, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v23 (unsigned int, unsigned int, signed int, signed short);
extern signed short (*v24) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = -2;
signed char v50 = -4;
unsigned short v49 = 3;

void v15 (unsigned char v52, signed short v53, unsigned char v54, unsigned char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 4U;
unsigned char v57 = 7;
signed char v56 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v59, unsigned char v60, signed char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -1;
unsigned char v63 = 3;
signed short v62 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = 0;
signed char v67 = 1;
signed short v66 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v69;
signed int v70;
signed char v71;
signed int v72;
signed short v73;
v69 = v66 - v66;
v70 = 0 - -3;
v71 = v65 - -4;
v72 = 3 + v68;
v73 = v19 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 2: 
{
signed char v74;
v74 = v17 ();
history[history_index++] = (int)v74;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
