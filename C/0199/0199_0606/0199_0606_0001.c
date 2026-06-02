#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern signed int v3 (signed int, unsigned char, signed int, signed short);
extern signed int (*v4) (signed int, unsigned char, signed int, signed short);
extern unsigned int v5 (unsigned short, unsigned int);
extern unsigned int (*v6) (unsigned short, unsigned int);
signed int v7 (unsigned short, unsigned short, signed int, signed char);
signed int (*v8) (unsigned short, unsigned short, signed int, signed char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
unsigned int v17 (signed char, unsigned short, signed short);
unsigned int (*v18) (signed char, unsigned short, signed short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (signed int, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned short);
extern signed short v25 (signed char, signed short, unsigned int);
extern signed short (*v26) (signed char, signed short, unsigned int);
signed char v27 (unsigned short);
signed char (*v28) (unsigned short) = v27;
extern unsigned short v29 (signed short, signed char, unsigned char);
extern unsigned short (*v30) (signed short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 0U;
signed char v47 = -3;
signed char v46 = -4;

signed char v27 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = -2;
unsigned int v51 = 1U;
unsigned char v50 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed short v53;
signed char v54;
unsigned char v55;
unsigned short v56;
v53 = 2 - 0;
v54 = 0 + -1;
v55 = 6 - v50;
v56 = v29 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 5: 
{
signed short v57;
signed char v58;
unsigned char v59;
unsigned short v60;
v57 = -4 + -1;
v58 = -3 - -4;
v59 = 0 - 5;
v60 = v29 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
{
signed short v61;
signed char v62;
unsigned char v63;
unsigned short v64;
v61 = 0 - -4;
v62 = -1 + 2;
v63 = 0 - v50;
v64 = v29 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 9: 
{
signed short v65;
signed char v66;
unsigned char v67;
unsigned short v68;
v65 = 3 + -1;
v66 = -3 + -3;
v67 = 2 - v50;
v68 = v29 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned int v17 (signed char v69, unsigned short v70, signed short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 3;
unsigned char v73 = 1;
unsigned short v72 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned char v77 = 7;
signed char v76 = -3;
unsigned int v75 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v78, unsigned short v79, signed int v80, signed char v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -3;
signed short v83 = 2;
unsigned char v82 = 3;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}
