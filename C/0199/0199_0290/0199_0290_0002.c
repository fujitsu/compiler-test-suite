#include <stdlib.h>
unsigned short v1 (signed short, signed char, unsigned char);
unsigned short (*v2) (signed short, signed char, unsigned char) = v1;
unsigned short v3 (signed char);
unsigned short (*v4) (signed char) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed int v9 (unsigned char, signed short, unsigned short, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned short, signed int);
extern void v11 (unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
signed char v15 (signed short, signed short);
signed char (*v16) (signed short, signed short) = v15;
extern signed int v17 (unsigned int, signed char, signed char);
extern signed int (*v18) (unsigned int, signed char, signed char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned short v21 (signed int, unsigned short, signed int);
extern unsigned short (*v22) (signed int, unsigned short, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, unsigned short, signed char);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern void v27 (unsigned short, signed int, signed char);
extern void (*v28) (unsigned short, signed int, signed char);
extern unsigned char v29 (signed int, signed char, unsigned short);
extern unsigned char (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 4;
signed short v57 = -2;
unsigned int v56 = 5U;

signed int v25 (void)
{
{
for (;;) {
unsigned int v61 = 7U;
unsigned char v60 = 3;
signed int v59 = -2;
trace++;
switch (trace)
{
case 2: 
return -4;
case 6: 
return -4;
default: abort ();
}
}
}
}

signed char v15 (signed short v62, signed short v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = -1;
unsigned short v65 = 3;
unsigned char v64 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 2U;
unsigned char v69 = 3;
unsigned char v68 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v71, signed char v72, unsigned char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 3;
unsigned int v75 = 0U;
unsigned short v74 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed int v77;
unsigned short v78;
signed int v79;
unsigned short v80;
v77 = 3 - 1;
v78 = 3 + v74;
v79 = 1 + -3;
v80 = v21 (v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 4: 
{
signed int v81;
unsigned short v82;
signed int v83;
unsigned short v84;
v81 = 3 + -1;
v82 = v74 + 2;
v83 = -1 + 1;
v84 = v21 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 8: 
{
unsigned short v85;
signed int v86;
signed char v87;
v85 = 2 + v74;
v86 = 2 - 0;
v87 = 0 - v72;
v27 (v85, v86, v87);
}
break;
case 10: 
{
signed int v88;
unsigned short v89;
signed int v90;
unsigned short v91;
v88 = -1 + -3;
v89 = v74 - v74;
v90 = -2 - 2;
v91 = v21 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return v74;
default: abort ();
}
}
}
}
