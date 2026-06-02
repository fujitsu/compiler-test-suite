#include <stdlib.h>
unsigned int v3 (signed char, signed short);
unsigned int (*v4) (signed char, signed short) = v3;
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern unsigned char v7 (unsigned char, signed short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int, signed int);
extern signed int v9 (unsigned short, unsigned char);
extern signed int (*v10) (unsigned short, unsigned char);
void v11 (signed short, unsigned int);
void (*v12) (signed short, unsigned int) = v11;
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
unsigned short v15 (signed short, signed char);
unsigned short (*v16) (signed short, signed char) = v15;
extern void v17 (signed int);
extern void (*v18) (signed int);
extern signed short v19 (signed int, unsigned int, unsigned short);
extern signed short (*v20) (signed int, unsigned int, unsigned short);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned int v23 (signed int, unsigned char, unsigned int);
extern unsigned int (*v24) (signed int, unsigned char, unsigned int);
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
extern unsigned short v27 (signed char, signed short, signed int);
extern unsigned short (*v28) (signed char, signed short, signed int);
extern unsigned short v29 (signed int, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v56 = 0;
signed short v55 = -2;
unsigned short v54 = 4;

signed int v21 (void)
{
{
for (;;) {
signed short v59 = -2;
unsigned int v58 = 0U;
signed short v57 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v60, signed char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 2;
unsigned char v63 = 6;
unsigned int v62 = 5U;
trace++;
switch (trace)
{
case 1: 
{
signed int v65;
unsigned char v66;
signed short v67;
unsigned int v68;
unsigned short v69;
v65 = 0 + -4;
v66 = v64 + 6;
v67 = -3 + v60;
v68 = 7U - 5U;
v69 = v29 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 3: 
{
unsigned short v70;
signed char v71;
unsigned char v72;
unsigned char v73;
v70 = 4 - 6;
v71 = 2 - v61;
v72 = v64 + v63;
v73 = v25 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 5: 
{
signed int v74;
unsigned char v75;
unsigned int v76;
unsigned int v77;
v74 = 3 + 0;
v75 = v64 - 2;
v76 = v62 - 1U;
v77 = v23 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
{
unsigned short v78;
signed char v79;
unsigned char v80;
unsigned char v81;
v78 = 2 - 3;
v79 = v61 - -3;
v80 = 1 - 4;
v81 = v25 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 9: 
{
unsigned short v82;
signed char v83;
unsigned char v84;
unsigned char v85;
v82 = 7 - 1;
v83 = v61 + v61;
v84 = v64 + 7;
v85 = v25 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

void v11 (signed short v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 6;
signed short v89 = 0;
signed short v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v91, signed short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 6;
unsigned int v94 = 5U;
signed char v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
