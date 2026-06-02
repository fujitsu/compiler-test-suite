#include <stdlib.h>
signed int v1 (signed short, unsigned char);
signed int (*v2) (signed short, unsigned char) = v1;
extern unsigned short v3 (unsigned int, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, signed short, unsigned int, unsigned short);
extern signed short v5 (signed short, signed char, signed char, unsigned int);
extern signed short (*v6) (signed short, signed char, signed char, unsigned int);
extern unsigned char v7 (unsigned int, signed short);
extern unsigned char (*v8) (unsigned int, signed short);
extern signed short v9 (unsigned char, signed short, signed char);
extern signed short (*v10) (unsigned char, signed short, signed char);
extern unsigned short v11 (unsigned short, unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short, signed int);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern signed short v15 (signed short, signed short, signed char);
extern signed short (*v16) (signed short, signed short, signed char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern unsigned char v23 (signed short, signed short, signed int);
extern unsigned char (*v24) (signed short, signed short, signed int);
unsigned char v25 (signed short, signed char);
unsigned char (*v26) (signed short, signed char) = v25;
signed short v27 (unsigned char, unsigned int);
signed short (*v28) (unsigned char, unsigned int) = v27;
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v53 = 1U;
unsigned int v52 = 5U;
signed char v51 = -3;

signed short v27 (unsigned char v54, unsigned int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -1;
unsigned char v57 = 5;
signed short v56 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed short v59, signed char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 2;
unsigned int v62 = 3U;
unsigned char v61 = 3;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v64;
unsigned short v65;
v64 = v61 - v61;
v65 = v29 (v64);
history[history_index++] = (int)v65;
}
break;
case 7: 
{
unsigned char v66;
unsigned short v67;
v66 = 2 + 7;
v67 = v29 (v66);
history[history_index++] = (int)v67;
}
break;
case 9: 
{
unsigned char v68;
unsigned short v69;
v68 = 4 + v61;
v69 = v29 (v68);
history[history_index++] = (int)v69;
}
break;
case 11: 
return 0;
case 13: 
return 3;
case 15: 
return 0;
case 17: 
return v61;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned char v72 = 5;
unsigned char v71 = 0;
signed short v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v73, unsigned char v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 1U;
unsigned short v76 = 7;
unsigned short v75 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v78;
signed short v79;
signed int v80;
unsigned char v81;
v78 = v73 + v73;
v79 = v73 + v73;
v80 = -1 - 2;
v81 = v23 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 2: 
{
unsigned char v82;
signed short v83;
signed char v84;
signed short v85;
v82 = 2 + v74;
v83 = v73 - 0;
v84 = 3 - -3;
v85 = v9 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 4: 
{
signed short v86;
signed char v87;
unsigned char v88;
v86 = v73 + v73;
v87 = 0 - -4;
v88 = v25 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 18: 
return -3;
default: abort ();
}
}
}
}
