#include <stdlib.h>
unsigned short v1 (signed short);
unsigned short (*v2) (signed short) = v1;
extern signed int v3 (unsigned char, signed char, signed short);
extern signed int (*v4) (unsigned char, signed char, signed short);
extern unsigned short v5 (unsigned char, signed short, signed char, signed char);
extern unsigned short (*v6) (unsigned char, signed short, signed char, signed char);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern unsigned int v9 (unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned char, signed int, unsigned char);
extern unsigned int v11 (signed int, unsigned int, signed int);
extern unsigned int (*v12) (signed int, unsigned int, signed int);
unsigned short v13 (signed int, unsigned char, unsigned short, unsigned int);
unsigned short (*v14) (signed int, unsigned char, unsigned short, unsigned int) = v13;
extern signed int v15 (unsigned int, unsigned short, signed short);
extern signed int (*v16) (unsigned int, unsigned short, signed short);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
unsigned int v21 (signed short, unsigned char, unsigned int);
unsigned int (*v22) (signed short, unsigned char, unsigned int) = v21;
extern signed char v25 (signed short, signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, signed short, unsigned short, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed int v29 (signed char);
signed int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v51 = 1;
signed char v50 = -1;
unsigned int v49 = 6U;

signed int v29 (signed char v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = -4;
signed char v54 = 2;
unsigned char v53 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed char v56;
signed int v57;
v56 = v54 + -4;
v57 = v29 (v56);
history[history_index++] = (int)v57;
}
break;
case 4: 
{
signed char v58;
signed int v59;
v58 = v52 + v54;
v59 = v29 (v58);
history[history_index++] = (int)v59;
}
break;
case 5: 
{
signed char v60;
signed int v61;
v60 = v52 - v52;
v61 = v29 (v60);
history[history_index++] = (int)v61;
}
break;
case 6: 
return -2;
case 7: 
{
signed char v62;
signed int v63;
v62 = v52 + v52;
v63 = v29 (v62);
history[history_index++] = (int)v63;
}
break;
case 8: 
{
signed char v64;
signed int v65;
v64 = v54 - -2;
v65 = v29 (v64);
history[history_index++] = (int)v65;
}
break;
case 9: 
return -1;
case 10: 
{
signed char v66;
signed int v67;
v66 = v52 + v54;
v67 = v29 (v66);
history[history_index++] = (int)v67;
}
break;
case 11: 
return 2;
case 12: 
return 2;
case 13: 
return 3;
case 14: 
return -1;
case 15: 
return 3;
default: abort ();
}
}
}
}

unsigned int v21 (signed short v68, unsigned char v69, unsigned int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 4;
signed char v72 = -4;
signed char v71 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v74, unsigned char v75, unsigned short v76, unsigned int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 2;
unsigned char v79 = 7;
signed int v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -2;
signed char v83 = -2;
unsigned int v82 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v85;
unsigned short v86;
signed short v87;
signed int v88;
v85 = 0U - 4U;
v86 = 7 + 3;
v87 = v84 - v81;
v88 = v15 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 18: 
return 0;
default: abort ();
}
}
}
}
