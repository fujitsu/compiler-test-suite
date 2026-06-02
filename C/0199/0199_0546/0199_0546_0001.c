#include <stdlib.h>
extern signed short v1 (signed short, unsigned char);
extern signed short (*v2) (signed short, unsigned char);
extern signed short v3 (unsigned short, signed int, signed char, unsigned int);
extern signed short (*v4) (unsigned short, signed int, signed char, unsigned int);
extern signed int v5 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned int, signed short, unsigned char, signed short);
signed short v7 (unsigned int, signed int);
signed short (*v8) (unsigned int, signed int) = v7;
extern signed char v9 (signed short, signed int, unsigned char, signed short);
extern signed char (*v10) (signed short, signed int, unsigned char, signed short);
extern signed short v11 (signed char, unsigned short, signed char, signed short);
extern signed short (*v12) (signed char, unsigned short, signed char, signed short);
signed char v13 (signed char, unsigned short, signed char, signed short);
signed char (*v14) (signed char, unsigned short, signed char, signed short) = v13;
unsigned short v15 (signed short);
unsigned short (*v16) (signed short) = v15;
extern unsigned int v17 (signed char, unsigned char);
extern unsigned int (*v18) (signed char, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed char);
extern unsigned int (*v24) (signed short, unsigned char, signed char);
unsigned short v25 (signed char, signed short, unsigned char);
unsigned short (*v26) (signed char, signed short, unsigned char) = v25;
extern unsigned char v27 (signed short, signed int, unsigned int);
extern unsigned char (*v28) (signed short, signed int, unsigned int);
extern signed int v29 (unsigned char, signed short, unsigned int, unsigned char);
extern signed int (*v30) (unsigned char, signed short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v51 = 1;
signed int v50 = -4;
signed int v49 = 0;

unsigned short v25 (signed char v52, signed short v53, unsigned char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 2;
signed short v56 = 2;
unsigned int v55 = 1U;
trace++;
switch (trace)
{
case 5: 
{
signed char v58;
unsigned short v59;
signed char v60;
signed short v61;
signed short v62;
v58 = -4 + v52;
v59 = 7 - 7;
v60 = 1 - v52;
v61 = v57 + 1;
v62 = v11 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 9: 
return 2;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 6U;
signed short v65 = 3;
unsigned int v64 = 1U;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed char v13 (signed char v67, unsigned short v68, signed char v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -3;
signed short v72 = 0;
unsigned short v71 = 2;
trace++;
switch (trace)
{
case 7: 
return v67;
default: abort ();
}
}
}
}

signed short v7 (unsigned int v74, signed int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -4;
signed short v77 = 3;
signed int v76 = -4;
trace++;
switch (trace)
{
case 3: 
{
signed short v79;
signed int v80;
unsigned int v81;
unsigned char v82;
v79 = -2 - v78;
v80 = v75 + v76;
v81 = v74 - 4U;
v82 = v27 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
